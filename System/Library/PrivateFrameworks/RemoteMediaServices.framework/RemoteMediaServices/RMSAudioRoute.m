@interface RMSAudioRoute
+ (id)audioRoutesFromProtobufs:(id)a3;
+ (id)protobufsFromAudioRoutes:(id)a3;
- (BOOL)isEqualToAudioRoute:(id)a3;
- (RMSAudioRoute)initWithProtobuf:(id)a3;
- (id)protobuf;
@end

@implementation RMSAudioRoute

- (RMSAudioRoute)initWithProtobuf:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RMSAudioRoute;
  v5 = [(RMSAudioRoute *)&v9 init];
  if (v5)
  {
    v6 = [v4 displayName];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v5->_macAddress = [v4 macAddress];
    v5->_supportsVideo = [v4 supportsVideo];
    v5->_selected = [v4 selected];
  }

  return v5;
}

- (id)protobuf
{
  v3 = objc_opt_new();
  [v3 setDisplayName:self->_displayName];
  [v3 setMacAddress:self->_macAddress];
  [v3 setSupportsVideo:self->_supportsVideo];
  [v3 setSelected:self->_selected];

  return v3;
}

- (BOOL)isEqualToAudioRoute:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (macAddress = self->_macAddress, macAddress == [v4 macAddress]) && (selected = self->_selected, selected == objc_msgSend(v5, "isSelected")))
  {
    displayName = self->_displayName;
    v9 = [v5 displayName];
    v10 = [(NSString *)displayName isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)audioRoutesFromProtobufs:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [RMSAudioRoute alloc];
        v12 = [(RMSAudioRoute *)v11 initWithProtobuf:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)protobufsFromAudioRoutes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) protobuf];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end