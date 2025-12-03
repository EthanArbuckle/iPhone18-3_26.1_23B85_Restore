@interface PCXMPStringParser
- (PCXMPStringParser)init;
- (void)dealloc;
- (void)parseXMPData:(id)data;
- (void)parseXMPString:(id)string;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidStartDocument:(id)document;
@end

@implementation PCXMPStringParser

- (PCXMPStringParser)init
{
  v5.receiver = self;
  v5.super_class = PCXMPStringParser;
  v2 = [(PCXMPStringParser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 9) = 0;
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 7) = 0;
    *(v2 + 8) = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:23];
    v3->parentTags1 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"rdf:SphericalVideo", @"x:xmpmeta", 0}];
    v3->parentTags2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"rdf:RDF", 0}];
    v3->parentTags3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"rdf:Description", 0}];
  }

  return v3;
}

- (void)dealloc
{
  [(PCXMPStringParser *)self parserDidEndDocument:0];
  mDict = self->mDict;
  if (mDict)
  {
  }

  parentTags1 = self->parentTags1;
  if (parentTags1)
  {
  }

  parentTags2 = self->parentTags2;
  if (parentTags2)
  {
  }

  parentTags3 = self->parentTags3;
  if (parentTags3)
  {
  }

  v7.receiver = self;
  v7.super_class = PCXMPStringParser;
  [(PCXMPStringParser *)&v7 dealloc];
}

- (void)parseXMPString:(id)string
{
  v5 = objc_autoreleasePoolPush();
  -[PCXMPStringParser parseXMPData:](self, "parseXMPData:", [string dataUsingEncoding:4]);

  objc_autoreleasePoolPop(v5);
}

- (void)parseXMPData:(id)data
{
  v4 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:data];
  [v4 setDelegate:self];
  [v4 parse];
}

- (void)parserDidStartDocument:(id)document
{
  [(PCXMPStringParser *)self parserDidEndDocument:document];
  self->tagParent1 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2872E16E0];
  self->tagParent2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2872E16E0];
  self->tagParent3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2872E16E0];
  mDict = self->mDict;

  [(NSMutableDictionary *)mDict removeAllObjects];
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  if ([(NSArray *)self->parentTags1 containsObject:element])
  {
    [(NSMutableString *)self->tagParent1 setString:element];
    [(NSMutableString *)self->tagParent2 setString:&stru_2872E16E0];
    [(NSMutableString *)self->tagParent3 setString:&stru_2872E16E0];
    tagDict1 = self->tagDict1;
    if (tagDict1)
    {
    }

    self->tagDict1 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:47];
    tagDict2 = self->tagDict2;
    if (tagDict2)
    {

      self->tagDict2 = 0;
    }
  }

  else if ([(NSArray *)self->parentTags2 containsObject:element])
  {
    [(NSMutableString *)self->tagParent2 setString:element];
    [(NSMutableString *)self->tagParent3 setString:&stru_2872E16E0];
    v12 = self->tagDict2;
    if (v12)
    {
    }

    self->tagDict2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:47];
  }

  else if ([(NSArray *)self->parentTags3 containsObject:element])
  {
    [(NSMutableString *)self->tagParent3 setString:element];
    tagDict3 = self->tagDict3;
    if (tagDict3)
    {
    }

    self->tagDict3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:47];
  }

  valueString = self->valueString;
  if (valueString)
  {
  }

  self->valueString = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2872E16E0];
  if (attributes && [attributes count])
  {
    mDict = self->tagDict3;
    if (!mDict)
    {
      mDict = self->tagDict2;
      if (!mDict)
      {
        mDict = self->tagDict1;
        if (!mDict)
        {
          mDict = self->mDict;
        }
      }
    }

    [(NSMutableDictionary *)mDict setObject:attributes forKey:element];
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  valueString = self->valueString;
  if (valueString)
  {
    [(NSMutableString *)valueString appendString:characters];
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if ([(NSArray *)self->parentTags1 containsObject:element])
  {
    tagDict3 = self->tagDict3;
    if (tagDict3)
    {
      tagDict2 = self->tagDict2;
      if (!tagDict2)
      {
        tagDict2 = self->tagDict1;
        if (!tagDict2)
        {
          tagDict2 = self->mDict;
        }
      }

      if ([(NSMutableDictionary *)tagDict3 count])
      {
        [(NSMutableDictionary *)tagDict2 setValue:self->tagDict3 forKey:[(NSMutableString *)self->tagParent3 copy]];
      }

      self->tagDict3 = 0;
      [(NSMutableString *)self->tagParent3 setString:&stru_2872E16E0];
    }

    v10 = self->tagDict2;
    if (v10)
    {
      tagDict1 = self->tagDict1;
      if (!tagDict1)
      {
        tagDict1 = self->mDict;
      }

      if ([(NSMutableDictionary *)v10 count])
      {
        [(NSMutableDictionary *)tagDict1 setValue:self->tagDict2 forKey:[(NSMutableString *)self->tagParent2 copy]];
      }

      self->tagDict2 = 0;
      [(NSMutableString *)self->tagParent2 setString:&stru_2872E16E0];
    }

    v12 = self->tagDict1;
    if (v12)
    {
      if ([(NSMutableDictionary *)v12 count])
      {
        [(NSMutableDictionary *)self->mDict setValue:self->tagDict1 forKey:[(NSMutableString *)self->tagParent1 copy]];
      }

      self->tagDict1 = 0;
    }

    tagParent1 = self->tagParent1;
LABEL_44:

    [(NSMutableString *)tagParent1 setString:&stru_2872E16E0];
    return;
  }

  if ([(NSArray *)self->parentTags2 containsObject:element])
  {
    v14 = self->tagDict3;
    if (v14)
    {
      mDict = self->tagDict2;
      if (!mDict)
      {
        mDict = self->tagDict1;
        if (!mDict)
        {
          mDict = self->mDict;
        }
      }

      if ([(NSMutableDictionary *)v14 count])
      {
        [(NSMutableDictionary *)mDict setValue:self->tagDict3 forKey:[(NSMutableString *)self->tagParent3 copy]];
      }

      self->tagDict3 = 0;
      [(NSMutableString *)self->tagParent3 setString:&stru_2872E16E0];
    }

    v16 = self->tagDict2;
    if (v16)
    {
      v17 = self->tagDict1;
      if (!v17)
      {
        v17 = self->mDict;
      }

      if ([(NSMutableDictionary *)v16 count])
      {
        [(NSMutableDictionary *)v17 setValue:self->tagDict2 forKey:[(NSMutableString *)self->tagParent2 copy]];
      }

      self->tagDict2 = 0;
    }

    tagParent1 = self->tagParent2;
    goto LABEL_44;
  }

  if ([(NSArray *)self->parentTags3 containsObject:element])
  {
    v18 = self->tagDict3;
    if (v18)
    {
      v19 = self->tagDict2;
      if (!v19)
      {
        v19 = self->tagDict1;
        if (!v19)
        {
          v19 = self->mDict;
        }
      }

      if ([(NSMutableDictionary *)v18 count])
      {
        [(NSMutableDictionary *)v19 setValue:self->tagDict3 forKey:[(NSMutableString *)self->tagParent3 copy]];
      }

      self->tagDict3 = 0;
    }

    tagParent1 = self->tagParent3;
    goto LABEL_44;
  }

  if (self->valueString)
  {
    v20 = self->tagDict3;
    if (!v20)
    {
      v20 = self->tagDict2;
      if (!v20)
      {
        v20 = self->tagDict1;
        if (!v20)
        {
          v20 = self->mDict;
        }
      }
    }

    v21 = [(NSMutableDictionary *)v20 objectForKey:element];
    if (v21)
    {
      v22 = v21;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v22];
        dictionary = v23;
        valueString = self->valueString;
        elementCopy = element;
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        -[NSMutableString setObject:forKey:](dictionary, "setObject:forKey:", v22, [element stringByAppendingString:@"-0"]);
        v27 = self->valueString;
        elementCopy = [element stringByAppendingString:@"-1"];
        v23 = dictionary;
        valueString = v27;
      }

      [(NSMutableString *)v23 setObject:valueString forKey:elementCopy];
    }

    else
    {
      dictionary = self->valueString;
    }

    [(NSMutableDictionary *)v20 setValue:dictionary forKey:element];

    self->valueString = 0;
  }
}

- (void)parserDidEndDocument:(id)document
{
  tagParent1 = self->tagParent1;
  if (tagParent1)
  {

    self->tagParent1 = 0;
  }

  tagParent2 = self->tagParent2;
  if (tagParent2)
  {

    self->tagParent2 = 0;
  }

  tagParent3 = self->tagParent3;
  if (tagParent3)
  {

    self->tagParent3 = 0;
  }

  valueString = self->valueString;
  if (valueString)
  {

    self->valueString = 0;
  }

  tagDict1 = self->tagDict1;
  if (tagDict1)
  {

    self->tagDict1 = 0;
  }

  tagDict2 = self->tagDict2;
  if (tagDict2)
  {

    self->tagDict2 = 0;
  }

  tagDict3 = self->tagDict3;
  if (tagDict3)
  {

    self->tagDict3 = 0;
  }

  xmlError = self->xmlError;
  if (xmlError)
  {

    self->xmlError = 0;
  }
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  xmlError = self->xmlError;
  if (xmlError)
  {
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"XML Parse Error %i, Description: %@, Line: %i", objc_msgSend(occurred, "code"), objc_msgSend(occurred, "localizedDescription"), objc_msgSend(parser, "lineNumber")];
  self->xmlError = v8;

  v9 = v8;
}

@end