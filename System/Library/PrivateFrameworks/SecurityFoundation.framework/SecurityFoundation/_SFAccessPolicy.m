@interface _SFAccessPolicy
+ (id)accessPolicyWithSecAccessibility:(__CFString *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (_SFAccessPolicy)init;
- (_SFAccessPolicy)initWithAccessibility:(id *)a3 sharingPolicy:(int64_t)a4;
- (_SFAccessPolicy)initWithCoder:(id)a3;
- (__CFDictionary)secAccessibilityAttributes;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessibility:(id *)a3;
@end

@implementation _SFAccessPolicy

+ (id)accessPolicyWithSecAccessibility:(__CFString *)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (CFEqual(a3, *MEMORY[0x277CDBF10]))
  {
    v7 = 2;
LABEL_3:
    v8 = 1;
LABEL_6:
    v17 = 0uLL;
    v15 = v8;
    v16 = 0uLL;
    v9 = [[a1 alloc] initWithAccessibility:&v15 sharingPolicy:v7];
    goto LABEL_7;
  }

  if (CFEqual(a3, *MEMORY[0x277CDBEE0]))
  {
    v8 = 0;
    v7 = 2;
    goto LABEL_6;
  }

  if (CFEqual(a3, *MEMORY[0x277CDBF18]))
  {
    v7 = 0;
    goto LABEL_3;
  }

  if (CFEqual(a3, *MEMORY[0x277CDBEE8]))
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_6;
  }

  if (a4)
  {
    v12 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid secAccessibility for SFAccessPolicy: %@", a3];
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a4 = [v12 errorWithDomain:@"SFKeychainErrorDomain" code:10 userInfo:v14];
  }

  v9 = 0;
LABEL_7:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (_SFAccessPolicy)init
{
  v3[1] = 0;
  v3[2] = 0;
  v3[0] = 1;
  return [(_SFAccessPolicy *)self initWithAccessibility:v3 sharingPolicy:2];
}

- (_SFAccessPolicy)initWithAccessibility:(id *)a3 sharingPolicy:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = _SFAccessPolicy;
  result = [(_SFAccessPolicy *)&v8 init];
  if (result)
  {
    var1 = a3->var1.var1;
    *&result->_accessibility.mode = *&a3->var0;
    result->_accessibility.authenticationPolicy.subsetCount = var1;
    result->_sharingPolicy = a4;
  }

  return result;
}

- (_SFAccessPolicy)initWithCoder:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _SFAccessPolicy;
  v5 = [(_SFAccessPolicy *)&v16 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"SFAccessPolicyAccessibilityMode"])
    {
      v6 = [v4 decodeIntegerForKey:@"SFAccessPolicyAccessibilityMode"];
    }

    else
    {
      v6 = -1;
    }

    if (![v4 containsValueForKey:@"SFAccessPolicySharingMode"] || (v7 = objc_msgSend(v4, "decodeIntegerForKey:", @"SFAccessPolicySharingMode"), v6 < 0) || v7 < 0)
    {
      v11 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA450];
      v18[0] = @"failed to deserialize SFAccessPolicy instance";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v13 = [v11 errorWithDomain:@"SFKeychainErrorDomain" code:4 userInfo:v12];
      [v4 failWithError:v13];

      v10 = 0;
      goto LABEL_11;
    }

    v5->_accessibility.mode = v6;
    v5->_accessibility.authenticationPolicy.authenticationRequirements = 0;
    v5->_accessibility.authenticationPolicy.subsetCount = 0;
    v5->_sharingPolicy = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFAccessPolicyAccessGroup"];
    accessGroup = v5->_accessGroup;
    v5->_accessGroup = v8;
  }

  v10 = v5;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_accessibility.mode forKey:@"SFAccessPolicyAccessibilityMode"];
  [v5 encodeInteger:self->_sharingPolicy forKey:@"SFAccessPolicySharingMode"];
  accessGroup = self->_accessGroup;
  if (accessGroup)
  {
    [v5 encodeObject:accessGroup forKey:@"SFAccessPolicyAccessGroup"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v8 = *&self->_accessibility.mode;
  sharingPolicy = self->_sharingPolicy;
  subsetCount = self->_accessibility.authenticationPolicy.subsetCount;
  v6 = [v4 initWithAccessibility:&v8 sharingPolicy:sharingPolicy];
  [v6 setAccessGroup:self->_accessGroup];
  [v6 setAccessControlList:self->_accessControlList];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        mode = self->_accessibility.mode;
        [(_SFAccessPolicy *)v6 accessibility];
        if (mode == v14 && (sharingPolicy = self->_sharingPolicy, sharingPolicy == [(_SFAccessPolicy *)v6 sharingPolicy]))
        {
          accessGroup = self->_accessGroup;
          v10 = accessGroup;
          if (!accessGroup)
          {
            sharingPolicy = [(_SFAccessPolicy *)v6 accessGroup];
            if (!sharingPolicy)
            {
              v12 = 1;
LABEL_17:

              goto LABEL_14;
            }

            v10 = self->_accessGroup;
          }

          v11 = [(_SFAccessPolicy *)v6 accessGroup];
          v12 = [(NSString *)v10 isEqualToString:v11];

          if (!accessGroup)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v12 = 0;
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    v12 = 0;
  }

LABEL_15:

  return v12;
}

- (__CFDictionary)secAccessibilityAttributes
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  sharingPolicy = self->_sharingPolicy;
  if (sharingPolicy)
  {
    if (sharingPolicy != 1)
    {
      if (sharingPolicy != 2)
      {
        goto LABEL_16;
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
    }

    mode = self->_accessibility.mode;
    if (!mode)
    {
      v7 = MEMORY[0x277CDBEE0];
      goto LABEL_15;
    }

    if (mode == 1)
    {
      v7 = MEMORY[0x277CDBF10];
LABEL_15:
      CFDictionaryAddValue(v4, *MEMORY[0x277CDBED8], *v7);
      goto LABEL_16;
    }
  }

  else
  {
    mode = self->_accessibility.mode;
    if (!mode)
    {
      v7 = MEMORY[0x277CDBEE8];
      goto LABEL_15;
    }

    if (mode == 1)
    {
      v7 = MEMORY[0x277CDBF18];
      goto LABEL_15;
    }
  }

  if (mode == 2)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"SFAccessPolicy does not support SFAccessibleWithAuthentication at present - please file a radar if you need it" userInfo:0];
    objc_exception_throw(v8);
  }

LABEL_16:
  CFAutorelease(v4);
  return v4;
}

- (void)setAccessibility:(id *)a3
{
  v3 = *&a3->var0;
  self->_accessibility.authenticationPolicy.subsetCount = a3->var1.var1;
  *&self->_accessibility.mode = v3;
}

@end