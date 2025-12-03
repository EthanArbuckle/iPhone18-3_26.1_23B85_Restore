@interface WLKServerRoute
- (NSURL)URL;
- (WLKServerRoute)initWithDictionary:(id)dictionary routeName:(id)name;
@end

@implementation WLKServerRoute

- (WLKServerRoute)initWithDictionary:(id)dictionary routeName:(id)name
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = WLKServerRoute;
  v8 = [(WLKServerRoute *)&v22 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    routeName = v8->_routeName;
    v8->_routeName = v9;

    v11 = [dictionaryCopy wlk_stringForKey:@"host"];
    v12 = [v11 copy];
    host = v8->_host;
    v8->_host = v12;

    v14 = [dictionaryCopy wlk_stringForKey:@"path"];
    v15 = [v14 copy];
    path = v8->_path;
    v8->_path = v15;

    v17 = [dictionaryCopy wlk_stringForKey:@"requiredParamsType"];
    v18 = [v17 copy];
    requiredKVPType = v8->_requiredKVPType;
    v8->_requiredKVPType = v18;

    if (![(NSString *)v8->_requiredKVPType length])
    {
      v20 = v8->_requiredKVPType;
      v8->_requiredKVPType = @"Default";
    }

    v8->_requiresLocation = [dictionaryCopy wlk_BOOLForKey:@"needsLocation" defaultValue:1];
  }

  return v8;
}

- (NSURL)URL
{
  v7[1] = *MEMORY[0x277D85DE8];
  host = self->_host;
  if (host)
  {
    if (self->_path)
    {
      v7[0] = self->_path;
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
      v4 = [host wlk_stringByAppendingPathComponents:v3];

      host = [MEMORY[0x277CBEBC0] URLWithString:v4];
    }

    else
    {
      host = 0;
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return host;
}

@end