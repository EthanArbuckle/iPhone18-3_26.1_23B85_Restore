@interface REHTMLElement
+ (id)elementWithHTMLData:(id)a3;
+ (id)elementWithHTMLString:(id)a3;
+ (id)htmlElementWithTag:(id)a3 content:(id)a4;
+ (id)link:(id)a3 title:(id)a4;
- (NSData)encodedData;
- (REHTMLElement)init;
- (id)_encodeString:(id)a3;
- (id)_encodedData;
- (id)addChild:(id)a3;
- (id)addChildren:(id)a3;
- (id)append:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)elementByAddingAtttibute:(id)a3 value:(id)a4;
- (id)elementByAddingAtttibutes:(id)a3;
- (id)elementByAddingClass:(id)a3;
- (id)elementByAddingClasses:(id)a3;
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

+ (id)elementWithHTMLData:(id)a3
{
  v3 = a3;
  v4 = [[REHTMLDataElement alloc] initWithData:v3];

  return v4;
}

+ (id)elementWithHTMLString:(id)a3
{
  v3 = a3;
  v4 = [[REHTMLConstantElement alloc] initWithContent:v3];

  return v4;
}

+ (id)htmlElementWithTag:(id)a3 content:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REHTMLTagElement alloc] initWithTag:v6 content:v5];

  return v7;
}

+ (id)link:(id)a3 title:(id)a4
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  v6 = a3;
  v7 = [a1 htmlElementWithTag:@"a" content:v5];
  v8 = [v7 elementByAddingAtttibute:@"href" value:v6];

  return v8;
}

- (id)_encodeString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 dataUsingEncoding:{objc_msgSend(objc_opt_class(), "_defaultStringEncoding")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_encodedData
{
  v3 = [MEMORY[0x277CBEB28] data];
  v4 = [(REHTMLElement *)self _prefixContentString];
  v5 = [(REHTMLElement *)self _encodeString:v4];

  if (v5)
  {
    [v3 appendData:v5];
  }

  v6 = [(REHTMLElement *)self _contentString];
  v7 = [(REHTMLElement *)self _encodeString:v6];

  if (v7)
  {
    [v3 appendData:v7];
  }

  v8 = [(REHTMLElement *)self _suffixContentString];
  v9 = [(REHTMLElement *)self _encodeString:v8];

  if (v9)
  {
    [v3 appendData:v9];
  }

  v10 = [v3 copy];

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
    v5 = [(REHTMLElement *)self _encodedData];
    v6 = v13[5];
    v13[5] = v5;

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

- (id)elementByAddingClass:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(REHTMLElement *)self elementByAddingClasses:v6, v10, v11];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)elementByAddingClasses:(id)a3
{
  v4 = a3;
  v5 = [(REHTMLElement *)self classes];
  v6 = [v5 arrayByAddingObjectsFromArray:v4];

  v7 = [(REHTMLElement *)self elementBySettingClasses:v6];

  return v7;
}

- (id)elementByAddingAtttibute:(id)a3 value:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [(REHTMLElement *)self elementByAddingAtttibutes:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)elementByAddingAtttibutes:(id)a3
{
  v4 = a3;
  v5 = [(REHTMLElement *)self attributes];
  v6 = [v5 mutableCopy];

  [v6 setValuesForKeysWithDictionary:v4];
  v7 = [v6 copy];
  v8 = [(REHTMLElement *)self elementBySettingAtttibutes:v7];

  return v8;
}

- (id)append:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [REHTMLContainerElement alloc];
    v10[0] = self;
    v10[1] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

    v7 = [(REHTMLContainerElement *)v5 initWithElements:v6];
  }

  else
  {
    v7 = self;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)addChild:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v10 count:1];

    v7 = [(REHTMLElement *)self addChildren:v6, v10, v11];
  }

  else
  {
    v7 = self;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)addChildren:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [[REHTMLParentElement alloc] initWithParents:self children:v4];
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

@end