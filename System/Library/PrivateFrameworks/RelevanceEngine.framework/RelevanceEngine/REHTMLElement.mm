@interface REHTMLElement
+ (id)elementWithHTMLData:(id)data;
+ (id)elementWithHTMLString:(id)string;
+ (id)htmlElementWithTag:(id)tag content:(id)content;
+ (id)link:(id)link title:(id)title;
- (NSData)encodedData;
- (REHTMLElement)init;
- (id)_encodeString:(id)string;
- (id)_encodedData;
- (id)addChild:(id)child;
- (id)addChildren:(id)children;
- (id)append:(id)append;
- (id)copyWithZone:(_NSZone *)zone;
- (id)elementByAddingAtttibute:(id)atttibute value:(id)value;
- (id)elementByAddingAtttibutes:(id)atttibutes;
- (id)elementByAddingClass:(id)class;
- (id)elementByAddingClasses:(id)classes;
@end

@implementation REHTMLElement

- (REHTMLElement)init
{
  v6.receiver = self;
  v6.super_class = REHTMLElement;
  v2 = [(REHTMLElement *)&v6 init];
  v3 = v2;
  if (v2)
  {
    data = v2->_data;
    v2->_data = 0;
  }

  return v3;
}

+ (id)elementWithHTMLData:(id)data
{
  dataCopy = data;
  v4 = [[REHTMLDataElement alloc] initWithData:dataCopy];

  return v4;
}

+ (id)elementWithHTMLString:(id)string
{
  stringCopy = string;
  v4 = [[REHTMLConstantElement alloc] initWithContent:stringCopy];

  return v4;
}

+ (id)htmlElementWithTag:(id)tag content:(id)content
{
  contentCopy = content;
  tagCopy = tag;
  v7 = [[REHTMLTagElement alloc] initWithTag:tagCopy content:contentCopy];

  return v7;
}

+ (id)link:(id)link title:(id)title
{
  if (title)
  {
    linkCopy = title;
  }

  else
  {
    linkCopy = link;
  }

  linkCopy2 = link;
  v7 = [self htmlElementWithTag:@"a" content:linkCopy];
  v8 = [v7 elementByAddingAtttibute:@"href" value:linkCopy2];

  return v8;
}

- (id)_encodeString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [stringCopy dataUsingEncoding:{objc_msgSend(objc_opt_class(), "_defaultStringEncoding")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_encodedData
{
  data = [MEMORY[0x277CBEB28] data];
  _prefixContentString = [(REHTMLElement *)self _prefixContentString];
  v5 = [(REHTMLElement *)self _encodeString:_prefixContentString];

  if (v5)
  {
    [data appendData:v5];
  }

  _contentString = [(REHTMLElement *)self _contentString];
  v7 = [(REHTMLElement *)self _encodeString:_contentString];

  if (v7)
  {
    [data appendData:v7];
  }

  _suffixContentString = [(REHTMLElement *)self _suffixContentString];
  v9 = [(REHTMLElement *)self _encodeString:_suffixContentString];

  if (v9)
  {
    [data appendData:v9];
  }

  v10 = [data copy];

  return v10;
}

- (NSData)encodedData
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26;
  v16 = __Block_byref_object_dispose__26;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__REHTMLElement_encodedData__block_invoke;
  v11[3] = &unk_2785FADB8;
  v11[4] = self;
  v11[5] = &v12;
  REHTMLElementAccessLock(v11);
  v3 = v13[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    _encodedData = [(REHTMLElement *)self _encodedData];
    v6 = v13[5];
    v13[5] = _encodedData;

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __28__REHTMLElement_encodedData__block_invoke_2;
    v10[3] = &unk_2785FADE0;
    v10[4] = self;
    v10[5] = &v12;
    REHTMLElementAccessLock(v10);
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v7 initWithData:v13[5] encoding:4];
    [v8 length];
    v4 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v4;
}

- (id)elementByAddingClass:(id)class
{
  v11 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v4 = MEMORY[0x277CBEA60];
  classCopy2 = class;
  v6 = [v4 arrayWithObjects:&classCopy count:1];

  v7 = [(REHTMLElement *)self elementByAddingClasses:v6, classCopy, v11];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)elementByAddingClasses:(id)classes
{
  classesCopy = classes;
  classes = [(REHTMLElement *)self classes];
  v6 = [classes arrayByAddingObjectsFromArray:classesCopy];

  v7 = [(REHTMLElement *)self elementBySettingClasses:v6];

  return v7;
}

- (id)elementByAddingAtttibute:(id)atttibute value:(id)value
{
  v14[1] = *MEMORY[0x277D85DE8];
  atttibuteCopy = atttibute;
  v14[0] = value;
  v6 = MEMORY[0x277CBEAC0];
  valueCopy = value;
  atttibuteCopy2 = atttibute;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&atttibuteCopy count:1];

  v10 = [(REHTMLElement *)self elementByAddingAtttibutes:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)elementByAddingAtttibutes:(id)atttibutes
{
  atttibutesCopy = atttibutes;
  attributes = [(REHTMLElement *)self attributes];
  v6 = [attributes mutableCopy];

  [v6 setValuesForKeysWithDictionary:atttibutesCopy];
  v7 = [v6 copy];
  v8 = [(REHTMLElement *)self elementBySettingAtttibutes:v7];

  return v8;
}

- (id)append:(id)append
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (append)
  {
    appendCopy = append;
    v5 = [REHTMLContainerElement alloc];
    v10[0] = self;
    v10[1] = appendCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

    selfCopy = [(REHTMLContainerElement *)v5 initWithElements:v6];
  }

  else
  {
    selfCopy = self;
  }

  v8 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)addChild:(id)child
{
  v11 = *MEMORY[0x277D85DE8];
  if (child)
  {
    childCopy = child;
    v4 = MEMORY[0x277CBEA60];
    childCopy2 = child;
    v6 = [v4 arrayWithObjects:&childCopy count:1];

    selfCopy = [(REHTMLElement *)self addChildren:v6, childCopy, v11];
  }

  else
  {
    selfCopy = self;
  }

  v8 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)addChildren:(id)children
{
  childrenCopy = children;
  if ([childrenCopy count])
  {
    selfCopy = [[REHTMLParentElement alloc] initWithParents:self children:childrenCopy];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

@end