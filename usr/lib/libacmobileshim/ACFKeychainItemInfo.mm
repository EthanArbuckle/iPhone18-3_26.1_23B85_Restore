@interface ACFKeychainItemInfo
+ (id)keychainItemInfo;
+ (id)keychainItemInfoWithAttributes:(id)attributes;
- (ACFKeychainItemInfo)init;
- (ACFKeychainItemInfo)initWithAttributes:(id)attributes;
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
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)setAccessGroup:(id)group;
- (void)setAccessibleType:(void *)type;
- (void)setAccount:(id)account;
- (void)setApplicationTag:(id)tag;
- (void)setApplicationTagString:(id)string;
- (void)setClassCode:(id)code;
- (void)setComment:(id)comment;
- (void)setCreationDate:(id)date;
- (void)setCreator:(unint64_t)creator;
- (void)setDescription:(id)description;
- (void)setGeneric:(id)generic;
- (void)setGenericString:(id)string;
- (void)setIsInvisible:(BOOL)invisible;
- (void)setIsNegative:(BOOL)negative;
- (void)setIsPermanent:(BOOL)permanent;
- (void)setKeyType:(id)type;
- (void)setLabel:(id)label;
- (void)setModificationDate:(id)date;
- (void)setReturnAttributes:(BOOL)attributes;
- (void)setReturnData:(BOOL)data;
- (void)setReturnLimit:(unint64_t)limit;
- (void)setReturnPersistentRef:(BOOL)ref;
- (void)setReturnRef:(BOOL)ref;
- (void)setService:(id)service;
- (void)setSubject:(id)subject;
- (void)setSynchronizable:(BOOL)synchronizable;
- (void)setType:(unint64_t)type;
- (void)setValueData:(id)data;
- (void)setValuePersistentRef:(id)ref;
- (void)setValueRef:(id)ref;
@end

@implementation ACFKeychainItemInfo

+ (id)keychainItemInfo
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)keychainItemInfoWithAttributes:(id)attributes
{
  v3 = [[self alloc] initWithAttributes:attributes];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  [v5 setAttributeDictionary:{-[NSMutableDictionary mutableCopyWithZone:](-[ACFKeychainItemInfo attributeDictionary](self, "attributeDictionary"), "mutableCopyWithZone:", zone)}];
  return v5;
}

- (ACFKeychainItemInfo)initWithAttributes:(id)attributes
{
  if (attributes)
  {
    v6.receiver = self;
    v6.super_class = ACFKeychainItemInfo;
    v4 = [(ACFKeychainItemInfo *)&v6 init];
    if (v4)
    {
      -[ACFKeychainItemInfo setAttributeDictionary:](v4, "setAttributeDictionary:", [MEMORY[0x29EDB8E00] dictionaryWithDictionary:attributes]);
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
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];

  return [v2 dictionaryWithDictionary:attributeDictionary];
}

- (void)setClassCode:(id)code
{
  if (code)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC30];

    [(NSMutableDictionary *)attributeDictionary setObject:code forKey:v5];
  }
}

- (id)classCode
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC30];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setAccessGroup:(id)group
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = *MEMORY[0x29EDBBB78];
  if (group)
  {

    [(NSMutableDictionary *)attributeDictionary setObject:group forKey:v5];
  }

  else
  {
    v6 = *MEMORY[0x29EDBBB78];

    [(NSMutableDictionary *)attributeDictionary removeObjectForKey:v6, v5];
  }
}

- (NSString)accessGroup
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBB78];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setCreationDate:(id)date
{
  if (date)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBB8];

    [(NSMutableDictionary *)attributeDictionary setObject:date forKey:v5];
  }
}

- (NSDate)creationDate
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBB8];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setModificationDate:(id)date
{
  if (date)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC08];

    [(NSMutableDictionary *)attributeDictionary setObject:date forKey:v5];
  }
}

- (NSDate)modificationDate
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC08];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setDescription:(id)description
{
  if (description)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBC8];

    [(NSMutableDictionary *)attributeDictionary setObject:description forKey:v5];
  }
}

- (NSString)description
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBC8];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setComment:(id)comment
{
  if (comment)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBB0];

    [(NSMutableDictionary *)attributeDictionary setObject:comment forKey:v5];
  }
}

- (NSString)comment
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBB0];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setCreator:(unint64_t)creator
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:creator];
  v6 = *MEMORY[0x29EDBBBC0];

  [(NSMutableDictionary *)attributeDictionary setObject:v5 forKey:v6];
}

- (unint64_t)creator
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBBC0]];

  return [v3 unsignedIntegerValue];
}

- (void)setType:(unint64_t)type
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:type];
  v6 = *MEMORY[0x29EDBBC28];

  [(NSMutableDictionary *)attributeDictionary setObject:v5 forKey:v6];
}

- (unint64_t)type
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBC28]];

  return [v3 unsignedIntegerValue];
}

- (void)setLabel:(id)label
{
  if (label)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC00];

    [(NSMutableDictionary *)attributeDictionary setObject:label forKey:v5];
  }
}

- (NSString)label
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC00];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setSubject:(id)subject
{
  if (subject)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC18];

    [(NSMutableDictionary *)attributeDictionary setObject:subject forKey:v5];
  }
}

- (NSString)subject
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC18];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setIsInvisible:(BOOL)invisible
{
  v3 = MEMORY[0x29EDB8F00];
  if (!invisible)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBBD8];

  [(NSMutableDictionary *)attributeDictionary setObject:v4 forKey:v6];
}

- (BOOL)isInvisible
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBBD8]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setIsNegative:(BOOL)negative
{
  v3 = MEMORY[0x29EDB8F00];
  if (!negative)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBBE0];

  [(NSMutableDictionary *)attributeDictionary setObject:v4 forKey:v6];
}

- (BOOL)isNegative
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBBE0]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setIsPermanent:(BOOL)permanent
{
  v3 = MEMORY[0x29EDB8F00];
  if (!permanent)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBBE8];

  [(NSMutableDictionary *)attributeDictionary setObject:v4 forKey:v6];
}

- (BOOL)isPermanent
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBBE8]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setAccessibleType:(void *)type
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = *MEMORY[0x29EDBBB80];

  [(NSMutableDictionary *)attributeDictionary setObject:type forKey:v5];
}

- (void)accessibleType
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBB80];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setSynchronizable:(BOOL)synchronizable
{
  synchronizableCopy = synchronizable;
  if ([(ACFKeychainItemInfo *)self isSynchronizableAttributeAvaiable])
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v6 = [MEMORY[0x29EDBA070] numberWithBool:synchronizableCopy];
    v7 = *MEMORY[0x29EDBBC20];

    [(NSMutableDictionary *)attributeDictionary setObject:v6 forKey:v7];
  }
}

- (BOOL)synchronizable
{
  isSynchronizableAttributeAvaiable = [(ACFKeychainItemInfo *)self isSynchronizableAttributeAvaiable];
  if (isSynchronizableAttributeAvaiable)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBC20]];

    LOBYTE(isSynchronizableAttributeAvaiable) = [v5 BOOLValue];
  }

  return isSynchronizableAttributeAvaiable;
}

- (void)setKeyType:(id)type
{
  if (type)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBF8];

    [(NSMutableDictionary *)attributeDictionary setObject:type forKey:v5];
  }
}

- (id)keyType
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBF8];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setApplicationTag:(id)tag
{
  if (tag)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBA8];

    [(NSMutableDictionary *)attributeDictionary setObject:tag forKey:v5];
  }
}

- (NSData)applicationTag
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBA8];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setApplicationTagString:(id)string
{
  v4 = [string dataUsingEncoding:4];

  [(ACFKeychainItemInfo *)self setApplicationTag:v4];
}

- (NSString)applicationTagString
{
  v2 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:-[ACFKeychainItemInfo applicationTag](self encoding:{"applicationTag"), 4}];

  return v2;
}

- (void)setAccount:(id)account
{
  if (account)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBBA0];

    [(NSMutableDictionary *)attributeDictionary setObject:account forKey:v5];
  }
}

- (NSString)account
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBA0];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setService:(id)service
{
  if (service)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBC10];

    [(NSMutableDictionary *)attributeDictionary setObject:service forKey:v5];
  }
}

- (NSString)service
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBC10];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setGeneric:(id)generic
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v5 = *MEMORY[0x29EDBBBD0];
  if (generic)
  {

    [(NSMutableDictionary *)attributeDictionary setObject:generic forKey:v5];
  }

  else
  {
    v6 = *MEMORY[0x29EDBBBD0];

    [(NSMutableDictionary *)attributeDictionary removeObjectForKey:v6, v5];
  }
}

- (NSData)generic
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBBD0];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setGenericString:(id)string
{
  v4 = [string dataUsingEncoding:4];

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

- (void)setValueRef:(id)ref
{
  if (ref)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBCE0];

    [(NSMutableDictionary *)attributeDictionary setObject:ref forKey:v5];
  }
}

- (id)valueRef
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBCE0];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setValueData:(id)data
{
  if (data)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBCD0];

    [(NSMutableDictionary *)attributeDictionary setObject:data forKey:v5];
  }
}

- (id)valueData
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBCD0];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setValuePersistentRef:(id)ref
{
  if (ref)
  {
    attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
    v5 = *MEMORY[0x29EDBBCD8];

    [(NSMutableDictionary *)attributeDictionary setObject:ref forKey:v5];
  }
}

- (id)valuePersistentRef
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = *MEMORY[0x29EDBBCD8];

  return [(NSMutableDictionary *)attributeDictionary objectForKey:v3];
}

- (void)setReturnData:(BOOL)data
{
  v3 = MEMORY[0x29EDB8F00];
  if (!data)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBCB0];

  [(NSMutableDictionary *)attributeDictionary setObject:v4 forKey:v6];
}

- (BOOL)returnData
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBCB0]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setReturnAttributes:(BOOL)attributes
{
  v3 = MEMORY[0x29EDB8F00];
  if (!attributes)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBCA8];

  [(NSMutableDictionary *)attributeDictionary setObject:v4 forKey:v6];
}

- (BOOL)returnAttributes
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBCA8]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setReturnRef:(BOOL)ref
{
  v3 = MEMORY[0x29EDB8F00];
  if (!ref)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBCC0];

  [(NSMutableDictionary *)attributeDictionary setObject:v4 forKey:v6];
}

- (BOOL)returnRef
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBCC0]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setReturnPersistentRef:(BOOL)ref
{
  v3 = MEMORY[0x29EDB8F00];
  if (!ref)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  v4 = *v3;
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBCB8];

  [(NSMutableDictionary *)attributeDictionary setObject:v4 forKey:v6];
}

- (BOOL)returnPersistentRef
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBCB8]];
  if (v3)
  {
    LOBYTE(v3) = CFBooleanGetValue(v3) != 0;
  }

  return v3;
}

- (void)setReturnLimit:(unint64_t)limit
{
  if (limit == -1)
  {
    v4 = *MEMORY[0x29EDBBC90];
  }

  else
  {
    v4 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:?];
  }

  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v6 = *MEMORY[0x29EDBBC88];

  [(NSMutableDictionary *)attributeDictionary setObject:v4 forKey:v6];
}

- (unint64_t)returnLimit
{
  attributeDictionary = [(ACFKeychainItemInfo *)self attributeDictionary];
  v3 = [(NSMutableDictionary *)attributeDictionary objectForKey:*MEMORY[0x29EDBBC88]];
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