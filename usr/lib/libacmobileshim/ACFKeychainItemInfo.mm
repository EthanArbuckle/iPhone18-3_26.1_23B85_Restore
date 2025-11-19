@interface ACFKeychainItemInfo
+ (id)keychainItemInfo;
+ (id)keychainItemInfoWithAttributes:(id)a3;
- (ACFKeychainItemInfo)init;
- (ACFKeychainItemInfo)initWithAttributes:(id)a3;
- (BOOL)isInvisible;
- (BOOL)isNegative;
- (BOOL)isPermanent;
- (BOOL)returnAttributes;
- (BOOL)returnData;
- (BOOL)returnPersistentRef;
- (BOOL)returnRef;
- (BOOL)synchronizable;
- (NSData)applicationTag;
- (NSData)generic;
- (NSDate)creationDate;
- (NSDate)modificationDate;
- (NSDictionary)attributes;
- (NSString)accessGroup;
- (NSString)account;
- (NSString)applicationTagString;
- (NSString)comment;
- (NSString)description;
- (NSString)genericString;
- (NSString)label;
- (NSString)service;
- (NSString)subject;
- (id)classCode;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyType;
- (id)valueData;
- (id)valuePersistentRef;
- (id)valueRef;
- (unint64_t)creator;
- (unint64_t)returnLimit;
- (unint64_t)type;
- (void)accessibleType;
- (void)dealloc;
- (void)dump;
- (void)setAccessGroup:(id)a3;
- (void)setAccessibleType:(void *)a3;
- (void)setAccount:(id)a3;
- (void)setApplicationTag:(id)a3;
- (void)setApplicationTagString:(id)a3;
- (void)setClassCode:(id)a3;
- (void)setComment:(id)a3;
- (void)setCreationDate:(id)a3;
- (void)setCreator:(unint64_t)a3;
- (void)setDescription:(id)a3;
- (void)setGeneric:(id)a3;
- (void)setGenericString:(id)a3;
- (void)setIsInvisible:(BOOL)a3;
- (void)setIsNegative:(BOOL)a3;
- (void)setIsPermanent:(BOOL)a3;
- (void)setKeyType:(id)a3;
- (void)setLabel:(id)a3;
- (void)setModificationDate:(id)a3;
- (void)setReturnAttributes:(BOOL)a3;
- (void)setReturnData:(BOOL)a3;
- (void)setReturnLimit:(unint64_t)a3;
- (void)setReturnPersistentRef:(BOOL)a3;
- (void)setReturnRef:(BOOL)a3;
- (void)setService:(id)a3;
- (void)setSubject:(id)a3;
- (void)setSynchronizable:(BOOL)a3;
- (void)setType:(unint64_t)a3;
- (void)setValueData:(id)a3;
- (void)setValuePersistentRef:(id)a3;
- (void)setValueRef:(id)a3;
@end

@implementation ACFKeychainItemInfo

+ (id)keychainItemInfo
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)keychainItemInfoWithAttributes:(id)a3
{
  v3 = [[a1 alloc] initWithAttributes:a3];

  return v3;
}

- (ACFKeychainItemInfo)init
{
  v4.receiver = self;
  v4.super_class = ACFKeychainItemInfo;
  v2 = [(ACFKeychainItemInfo *)&v4 init];
  if (v2)
  {
    -[ACFKeychainItemInfo setAttributeDictionary:](v2, "setAttributeDictionary:", [MEMORY[0x29EDB8E00] dictionary]);
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  [v5 setAttributeDictionary:{-[NSMutableDictionary mutableCopyWithZone:](-[ACFKeychainItemInfo attributeDictionary](self, "attributeDictionary"), "mutableCopyWithZone:", a3)}];
  return v5;
}

- (ACFKeychainItemInfo)initWithAttributes:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = ACFKeychainItemInfo;
    v4 = [(ACFKeychainItemInfo *)&v6 init];
    if (v4)
    {
      -[ACFKeychainItemInfo setAttributeDictionary:](v4, "setAttributeDictionary:", [MEMORY[0x29EDB8E00] dictionaryWithDictionary:a3]);
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ACFKeychainItemInfo;
    [(ACFKeychainItemInfo *)&v7 dealloc];
    return 0;
  }

  return v4;
}

- (void)dealloc
{
  [(ACFKeychainItemInfo *)self setAttributeDictionary:0];
  v3.receiver = self;
  v3.super_class = ACFKeychainItemInfo;
  [(ACFKeychainItemInfo *)&v3 dealloc];
}

- (NSDictionary)attributes
{
  v2 = MEMORY[0x29EDB8DC0];
  v3 = [(ACFKeychainItemInfo *)self attributeDictionary];

  return [v2 dictionaryWithDictionary:v3];
}

- (void)setClassCode:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC30];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (id)classCode
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC30];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setAccessGroup:(id)a3
{
  v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = *MEMORY[0x29EDBBB78];
  if (a3)
  {

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }

  else
  {
    v6 = *MEMORY[0x29EDBBB78];

    [(NSMutableDictionary *)v4 removeObjectForKey:v6, v5];
  }
}

- (NSString)accessGroup
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBB78];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setCreationDate:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBB8];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSDate)creationDate
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBB8];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setModificationDate:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC08];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSDate)modificationDate
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC08];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setDescription:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBC8];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSString)description
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBC8];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setComment:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBB0];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSString)comment
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBB0];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setCreator:(unint64_t)a3
{
  v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:a3];
  v6 = *MEMORY[0x29EDBBBC0];

  [(NSMutableDictionary *)v4 setObject:v5 forKey:v6];
}

- (unint64_t)creator
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBBC0]];

  return [v3 unsignedIntegerValue];
}

- (void)setType:(unint64_t)a3
{
  v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:a3];
  v6 = *MEMORY[0x29EDBBC28];

  [(NSMutableDictionary *)v4 setObject:v5 forKey:v6];
}

- (unint64_t)type
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBC28]];

  return [v3 unsignedIntegerValue];
}

- (void)setLabel:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC00];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSString)label
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC00];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setSubject:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC18];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSString)subject
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC18];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setIsInvisible:(BOOL)a3
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBBD8];

  [(NSMutableDictionary *)v5 setObject:v4 forKey:v6];
}

- (BOOL)isInvisible
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBBD8]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setIsNegative:(BOOL)a3
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBBE0];

  [(NSMutableDictionary *)v5 setObject:v4 forKey:v6];
}

- (BOOL)isNegative
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBBE0]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setIsPermanent:(BOOL)a3
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBBE8];

  [(NSMutableDictionary *)v5 setObject:v4 forKey:v6];
}

- (BOOL)isPermanent
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBBE8]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setAccessibleType:(void *)a3
{
  v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = *MEMORY[0x29EDBBB80];

  [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
}

- (void)accessibleType
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBB80];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setSynchronizable:(BOOL)a3
{
  v3 = a3;
  if ([(ACFKeychainItemInfo *)self isSynchronizableAttributeAvaiable])
  {
    v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v6 = [MEMORY[0x29EDBA070] numberWithBool:v3];
    v7 = *MEMORY[0x29EDBBC20];

    [(NSMutableDictionary *)v5 setObject:v6 forKey:v7];
  }
}

- (BOOL)synchronizable
{
  v3 = [(ACFKeychainItemInfo *)self isSynchronizableAttributeAvaiable];
  if (v3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = [(NSMutableDictionary *)v4 objectForKey:*MEMORY[0x29EDBBC20]];

    LOBYTE(v3) = [v5 BOOLValue];
  }

  return v3;
}

- (void)setKeyType:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBF8];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (id)keyType
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBF8];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setApplicationTag:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBA8];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSData)applicationTag
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBA8];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setApplicationTagString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];

  [(ACFKeychainItemInfo *)self setApplicationTag:v4];
}

- (NSString)applicationTagString
{
  v2 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:-[ACFKeychainItemInfo applicationTag](self encoding:{"applicationTag"), 4}];

  return v2;
}

- (void)setAccount:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBA0];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSString)account
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBA0];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setService:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC10];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (NSString)service
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC10];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setGeneric:(id)a3
{
  v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = *MEMORY[0x29EDBBBD0];
  if (a3)
  {

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }

  else
  {
    v6 = *MEMORY[0x29EDBBBD0];

    [(NSMutableDictionary *)v4 removeObjectForKey:v6, v5];
  }
}

- (NSData)generic
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBD0];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setGenericString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];

  [(ACFKeychainItemInfo *)self setGeneric:v4];
}

- (NSString)genericString
{
  result = [(ACFKeychainItemInfo *)self generic];
  if (result)
  {
    [(ACFKeychainItemInfo *)self generic];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [(ACFKeychainItemInfo *)self generic];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:-[ACFKeychainItemInfo generic](self encoding:{"generic"), 4}];

      return v4;
    }
  }

  return result;
}

- (void)setValueRef:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBCE0];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (id)valueRef
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBCE0];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setValueData:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBCD0];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (id)valueData
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBCD0];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setValuePersistentRef:(id)a3
{
  if (a3)
  {
    v4 = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBCD8];

    [(NSMutableDictionary *)v4 setObject:a3 forKey:v5];
  }
}

- (id)valuePersistentRef
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBCD8];

  return [(NSMutableDictionary *)v2 objectForKey:v3];
}

- (void)setReturnData:(BOOL)a3
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBCB0];

  [(NSMutableDictionary *)v5 setObject:v4 forKey:v6];
}

- (BOOL)returnData
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBCB0]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setReturnAttributes:(BOOL)a3
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBCA8];

  [(NSMutableDictionary *)v5 setObject:v4 forKey:v6];
}

- (BOOL)returnAttributes
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBCA8]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setReturnRef:(BOOL)a3
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBCC0];

  [(NSMutableDictionary *)v5 setObject:v4 forKey:v6];
}

- (BOOL)returnRef
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBCC0]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setReturnPersistentRef:(BOOL)a3
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBCB8];

  [(NSMutableDictionary *)v5 setObject:v4 forKey:v6];
}

- (BOOL)returnPersistentRef
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBCB8]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setReturnLimit:(unint64_t)a3
{
  if (a3 == -1)
  {
    v4 = *MEMORY[0x29EDBBC90];
  }

  else
  {
    v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:?];
  }

  v5 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBC88];

  [(NSMutableDictionary *)v5 setObject:v4 forKey:v6];
}

- (unint64_t)returnLimit
{
  v2 = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)v2 objectForKey:*MEMORY[0x29EDBBC88]];
  if (!v3)
  {
    return 1;
  }

  if (*MEMORY[0x29EDBBC90] == v3)
  {
    return -1;
  }

  return [v3 unsignedIntValue];
}

- (void)dump
{
  if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    v3 = [(NSDictionary *)[(ACFKeychainItemInfo *)self attributes] mutableCopy];
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA0F8] forKey:{"stringWithFormat:", @"<<<Generic data of size: %lu>>>", objc_msgSend(objc_msgSend(v3, "objectForKey:", *MEMORY[0x29EDBBBD0]), "length")), *MEMORY[0x29EDBBBD0]}];
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA0F8] forKey:{"stringWithFormat:", @"<<<Return data of size: %lu>>>", objc_msgSend(objc_msgSend(v3, "objectForKey:", *MEMORY[0x29EDBBCB0]), "length")), *MEMORY[0x29EDBBCB0]}];
    v4 = MEMORY[0x29EDBA0F8];
    v5 = *MEMORY[0x29EDBBCD0];
    v9 = [objc_msgSend(v3 objectForKey:{*MEMORY[0x29EDBBCD0]), "length"}];
    [v3 setObject:objc_msgSend(v4 forKey:{"stringWithFormat:", @"<<<Value data of size: %lu>>>", v5}];
    if (qword_2A1EB8F18)
    {
      if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        v6 = [v3 description];
        ACFLogNS(7, "[ACFKeychainItemInfo dump]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainItemInfo.m", 539, 0, v6, v7, v8, v9);
      }
    }
  }
}

@end