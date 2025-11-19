@interface OKPresentationCanvas
- (NSString)description;
- (OKPresentationCanvas)canvasWithName:(id)a3;
- (OKPresentationCanvas)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)keyPath;
- (id)mergedSettings;
- (void)dealloc;
- (void)parentApplyValueForKeyPath:(id)a3;
- (void)resolveIfNeeded;
- (void)setParent:(id)a3;
- (void)setPresentation:(id)a3;
- (void)setPropertiesObject:(id)a3 forKeyPath:(id)a4;
- (void)setSettingsObject:(id)a3 forKeyPath:(id)a4;
- (void)setUserDataObject:(id)a3 forKeyPath:(id)a4;
@end

@implementation OKPresentationCanvas

- (OKPresentationCanvas)init
{
  v5.receiver = self;
  v5.super_class = OKPresentationCanvas;
  v2 = [(OKPresentationCanvas *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_presentation, 0);
    objc_storeWeak(&v3->_parent, 0);
    v3->_name = 0;
    v3->_uuid = [objc_msgSend(MEMORY[0x277CCACA8] "generateUUID")];
    v3->_settings = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->_userSettings = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->_userData = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3->_properties = objc_alloc_init(MEMORY[0x277CBEB38]);
    *&v3->_isTemplate = 0;
  }

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_presentation, 0);
  objc_storeWeak(&self->_parent, 0);
  name = self->_name;
  if (name)
  {

    self->_name = 0;
  }

  uuid = self->_uuid;
  if (uuid)
  {

    self->_uuid = 0;
  }

  settings = self->_settings;
  if (settings)
  {

    self->_settings = 0;
  }

  userSettings = self->_userSettings;
  if (userSettings)
  {

    self->_userSettings = 0;
  }

  userData = self->_userData;
  if (userData)
  {

    self->_userData = 0;
  }

  properties = self->_properties;
  if (properties)
  {

    self->_properties = 0;
  }

  v9.receiver = self;
  v9.super_class = OKPresentationCanvas;
  [(OKPresentationCanvas *)&v9 dealloc];
}

- (void)setPresentation:(id)a3
{
  if ([(OKPresentationCanvas *)self presentation]!= a3)
  {
    self->_isResolved = 0;

    objc_storeWeak(&self->_presentation, a3);
  }
}

- (void)setParent:(id)a3
{
  if ([(OKPresentationCanvas *)self parent]!= a3)
  {
    self->_isResolved = 0;

    objc_storeWeak(&self->_parent, a3);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  v8.receiver = self;
  v8.super_class = OKPresentationCanvas;
  return [v3 stringWithFormat:@"MODEL %@ %@: %@", v5, name, -[OKPresentationCanvas description](&v8, sel_description)];
}

- (id)keyPath
{
  for (i = [MEMORY[0x277CBEB18] array]; self; self = -[OKPresentationCanvas parent](self, "parent"))
  {
    if (![(OKPresentationCanvas *)self name])
    {
      break;
    }

    [i insertObject:-[OKPresentationCanvas name](self atIndex:{"name"), 0}];
  }

  result = [i count];
  if (result)
  {

    return [i componentsJoinedByString:@"."];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    [v4 setPresentation:{-[OKPresentationCanvas presentation](self, "presentation")}];
    [v4 setParent:{-[OKPresentationCanvas parent](self, "parent")}];
    *(v4 + 24) = [(NSString *)self->_name copy];
    v5 = *(v4 + 32);
    if (v5)
    {

      *(v4 + 32) = 0;
    }

    *(v4 + 32) = [objc_msgSend(MEMORY[0x277CCACA8] "generateUUID")];
    if (self->_settings)
    {
      [*(v4 + 40) addEntriesFromDictionary:?];
    }

    if (self->_userSettings)
    {
      [*(v4 + 48) addEntriesFromDictionary:?];
    }

    if (self->_userData)
    {
      [*(v4 + 56) addEntriesFromDictionary:?];
    }

    if (self->_properties)
    {
      [*(v4 + 64) addEntriesFromDictionary:?];
    }

    *(v4 + 72) = self->_isTemplate;
    *(v4 + 73) = self->_isResolved;
  }

  return v4;
}

- (id)dictionary
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationCanvas.m" line:201 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v5, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)mergedSettings
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_settings];
  [v3 addEntriesFromDictionary:self->_userSettings];
  return v3;
}

- (OKPresentationCanvas)canvasWithName:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationCanvas.m" line:222 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v6, NSStringFromSelector(a2)];
  }

  return 0;
}

- (void)setSettingsObject:(id)a3 forKeyPath:(id)a4
{
  v7 = [a4 componentsSeparatedByString:@"."];
  if ([v7 count] < 2)
  {
    v12 = self;
    v13 = a3;
    v11 = a4;
    goto LABEL_6;
  }

  v8 = [v7 firstObject];
  v9 = [(OKPresentationCanvas *)self canvasWithName:v8];
  if (v9)
  {
    v10 = v9;
    if ([v7 count] == 2)
    {
      v11 = [v7 lastObject];
      v12 = v10;
      v13 = a3;
LABEL_6:

      [(OKPresentationCanvas *)v12 _setSettingsObject:v13 forKey:v11];
      return;
    }

    v14 = [a4 substringFromIndex:{objc_msgSend(a4, "rangeOfString:", @"."}];

    [(OKPresentationCanvas *)v10 setSettingsObject:a3 forKeyPath:v14];
  }

  else if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationCanvas.m" line:256 andFormat:@"Cannot find static canvas %@ for %@", v8, self->_name];
  }
}

- (void)setUserDataObject:(id)a3 forKeyPath:(id)a4
{
  v7 = [a4 componentsSeparatedByString:@"."];
  if ([v7 count] < 2)
  {
LABEL_7:
    v12 = self;
    v13 = a3;
    v11 = a4;
    goto LABEL_8;
  }

  v8 = [v7 firstObject];
  v9 = [(OKPresentationCanvas *)self canvasWithName:v8];
  if (!v9)
  {
    if (*MEMORY[0x277D62808] >= 5)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationCanvas.m" line:294 andFormat:@"Cannot find static canvas %@ for %@, this will be resolved at runtime if possible", v8, self->_name];
    }

    goto LABEL_7;
  }

  v10 = v9;
  if ([v7 count] == 2)
  {
    v11 = [v7 lastObject];
    v12 = v10;
    v13 = a3;
LABEL_8:

    [(OKPresentationCanvas *)v12 _setUserDataObject:v13 forKey:v11];
    return;
  }

  v14 = [a4 substringFromIndex:{objc_msgSend(a4, "rangeOfString:", @"."}];

  [(OKPresentationCanvas *)v10 setUserDataObject:a3 forKeyPath:v14];
}

- (void)setPropertiesObject:(id)a3 forKeyPath:(id)a4
{
  v7 = [a4 componentsSeparatedByString:@"."];
  if ([v7 count] < 2)
  {
    v12 = self;
    v13 = a3;
    v11 = a4;
    goto LABEL_6;
  }

  v8 = [v7 firstObject];
  v9 = [(OKPresentationCanvas *)self canvasWithName:v8];
  if (v9)
  {
    v10 = v9;
    if ([v7 count] == 2)
    {
      v11 = [v7 lastObject];
      v12 = v10;
      v13 = a3;
LABEL_6:

      [(OKPresentationCanvas *)v12 _setPropertiesObject:v13 forKey:v11];
      return;
    }

    v14 = [a4 substringFromIndex:{objc_msgSend(a4, "rangeOfString:", @"."}];

    [(OKPresentationCanvas *)v10 setPropertiesObject:a3 forKeyPath:v14];
  }

  else if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationCanvas.m" line:338 andFormat:@"Cannot find static canvas %@ for %@", v8, self->_name];
  }
}

- (void)parentApplyValueForKeyPath:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", -[OKPresentationCanvas name](self, "name"), a3];
  }

  else
  {
    v5 = [(OKPresentationCanvas *)self name];
  }

  [-[OKPresentationCanvas parent](self "parent")];
  v6 = [(OKPresentationCanvas *)self properties];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__OKPresentationCanvas_parentApplyValueForKeyPath___block_invoke;
  v7[3] = &unk_279C8ED48;
  v7[4] = a3;
  v7[5] = self;
  [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v7];
}

uint64_t __51__OKPresentationCanvas_parentApplyValueForKeyPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 rangeOfString:*(a1 + 32)];
  if (!result)
  {
    v7 = *(a1 + 40);

    return [v7 setPropertiesObject:a3 forKeyPath:a2];
  }

  return result;
}

- (void)resolveIfNeeded
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationCanvas.m" line:367 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v5, NSStringFromSelector(a2)];
  }
}

@end