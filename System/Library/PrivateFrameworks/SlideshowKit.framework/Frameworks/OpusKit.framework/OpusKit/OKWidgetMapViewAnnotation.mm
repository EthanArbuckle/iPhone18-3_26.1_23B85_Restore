@interface OKWidgetMapViewAnnotation
+ (id)supportedSettings;
- (OKWidgetMapViewAnnotation)init;
- (OKWidgetMapViewAnnotation)initWithSettings:(id)settings;
- (void)dealloc;
@end

@implementation OKWidgetMapViewAnnotation

- (OKWidgetMapViewAnnotation)init
{
  v3.receiver = self;
  v3.super_class = OKWidgetMapViewAnnotation;
  return [(MKPointAnnotation *)&v3 init];
}

- (OKWidgetMapViewAnnotation)initWithSettings:(id)settings
{
  v4 = [(OKWidgetMapViewAnnotation *)self init];
  if (v4)
  {
    v5 = [settings objectForKey:@"identifier"];
    if (v5)
    {
      v4->_identifier = [v5 copy];
    }

    v6 = [settings objectForKey:@"actionScript"];
    if (v6)
    {
      v4->_actionScript = [v6 copy];
    }

    v7 = [settings objectForKey:@"coordinate"];
    if (v7)
    {
      [v7 CLLocationCoordinate2DValue];
      [(MKPointAnnotation *)v4 setCoordinate:?];
    }

    v8 = [settings objectForKey:@"title"];
    if (v8)
    {
      [(MKShape *)v4 setTitle:v8];
    }

    v9 = [settings objectForKey:@"subtitle"];
    if (v9)
    {
      [(MKShape *)v4 setSubtitle:v9];
    }
  }

  return v4;
}

- (void)dealloc
{
  identifier = self->_identifier;
  if (identifier)
  {

    self->_identifier = 0;
  }

  actionScript = self->_actionScript;
  if (actionScript)
  {

    self->_actionScript = 0;
  }

  v5.receiver = self;
  v5.super_class = OKWidgetMapViewAnnotation;
  [(OKWidgetMapViewAnnotation *)&v5 dealloc];
}

+ (id)supportedSettings
{
  v15[5] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14[0] = @"identifier";
  v12[0] = @"type";
  v12[1] = @"default";
  v13[0] = &unk_287AF1370;
  v13[1] = [MEMORY[0x277CBEB68] null];
  v15[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[1] = @"actionScript";
  v10[1] = @"default";
  v11[0] = &unk_287AF1370;
  v10[0] = @"type";
  v11[1] = [MEMORY[0x277CBEB68] null];
  v15[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v14[2] = @"coordinate";
  v8 = @"type";
  v9 = &unk_287AF1388;
  v15[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v14[3] = @"title";
  v6[1] = @"default";
  v7[0] = &unk_287AF1370;
  v6[0] = @"type";
  v7[1] = [MEMORY[0x277CBEB68] null];
  v15[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v14[4] = @"subtitle";
  v4[1] = @"default";
  v5[0] = &unk_287AF1370;
  v4[0] = @"type";
  v5[1] = [MEMORY[0x277CBEB68] null];
  v15[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [dictionary addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v15, v14, 5)}];
  return dictionary;
}

@end