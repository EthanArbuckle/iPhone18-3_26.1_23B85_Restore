@interface SSVRedeemCodeMetadata
- (BOOL)allowsAutoSubmission;
- (NSArray)items;
- (NSString)code;
- (NSString)codeType;
- (SSVRedeemCodeMetadata)initWithRedeemCodeDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SSVRedeemCodeMetadata

- (SSVRedeemCodeMetadata)initWithRedeemCodeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SSVRedeemCodeMetadata;
  v5 = [(SSVRedeemCodeMetadata *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"codeInfo"];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [dictionaryCopy copy];
      dictionary = v5->_dictionary;
      v5->_dictionary = v8;
    }

    else
    {
      dictionary = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)code
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"codeInfo"];
  v3 = [v2 objectForKey:@"code"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)codeType
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"codeInfo"];
  v3 = [v2 objectForKey:@"codeType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)allowsAutoSubmission
{
  v2 = [(NSDictionary *)self->_dictionary objectForKey:@"codeInfo"];
  v3 = [v2 objectForKey:@"allowAutoSubmission"];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSArray)items
{
  v3 = [(NSDictionary *)self->_dictionary objectForKey:@"lockups"];
  v4 = [(NSDictionary *)self->_dictionary objectForKey:@"codeInfo"];
  v5 = [v4 objectForKey:@"salable"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SSVRedeemCodeItem alloc] initWithRedeemCodeDictionary:v5];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithObject:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      array = [MEMORY[0x1E695DF70] array];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __30__SSVRedeemCodeMetadata_items__block_invoke;
      v10[3] = &unk_1E84B3178;
      v7 = array;
      v11 = v7;
      [v3 enumerateKeysAndObjectsUsingBlock:v10];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void __30__SSVRedeemCodeMetadata_items__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SSLookupItem alloc] initWithLookupDictionary:v6];
    v5 = [[SSVRedeemCodeItem alloc] initWithLookupItem:v4];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSDictionary *)self->_dictionary copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_inputCode copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end