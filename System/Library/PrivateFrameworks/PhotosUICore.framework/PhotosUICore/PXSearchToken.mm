@interface PXSearchToken
- (PXSearchToken)initWithAttributedText:(id)text searchObject:(id)object representedObject:(id)representedObject;
- (PXSearchToken)initWithText:(id)text image:(id)image representedObject:(id)object;
- (PXSearchToken)initWithText:(id)text searchObject:(id)object representedObject:(id)representedObject;
- (id)textValue;
@end

@implementation PXSearchToken

- (id)textValue
{
  attributedText = [(PXSearchToken *)self attributedText];
  string = [attributedText string];
  if ([string length])
  {
    attributedText2 = [(PXSearchToken *)self attributedText];
    string2 = [attributedText2 string];
  }

  else
  {
    string2 = [(PXSearchToken *)self text];
  }

  if (![string2 length])
  {
    PXAssertGetLog();
  }

  return string2;
}

- (PXSearchToken)initWithText:(id)text searchObject:(id)object representedObject:(id)representedObject
{
  textCopy = text;
  objectCopy = object;
  representedObjectCopy = representedObject;
  v15.receiver = self;
  v15.super_class = PXSearchToken;
  v11 = [(PXSearchToken *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69DCF30] tokenWithIcon:0 text:textCopy];
    [(PXSearchToken *)v11 setSearchObject:v12];

    searchObject = [(PXSearchToken *)v11 searchObject];
    [searchObject setRepresentedObject:representedObjectCopy];

    [(PXSearchToken *)v11 setText:textCopy];
    [(PXSearchToken *)v11 setSearchObject:objectCopy];
    [(PXSearchToken *)v11 setRepresentedObject:representedObjectCopy];
  }

  return v11;
}

- (PXSearchToken)initWithAttributedText:(id)text searchObject:(id)object representedObject:(id)representedObject
{
  textCopy = text;
  objectCopy = object;
  representedObjectCopy = representedObject;
  v17.receiver = self;
  v17.super_class = PXSearchToken;
  v11 = [(PXSearchToken *)&v17 init];
  if (v11)
  {
    v12 = MEMORY[0x1E69DCF30];
    string = [textCopy string];
    v14 = [v12 tokenWithIcon:0 text:string];
    [(PXSearchToken *)v11 setSearchObject:v14];

    searchObject = [(PXSearchToken *)v11 searchObject];
    [searchObject setRepresentedObject:representedObjectCopy];

    [(PXSearchToken *)v11 setAttributedText:textCopy];
    [(PXSearchToken *)v11 setSearchObject:objectCopy];
    [(PXSearchToken *)v11 setRepresentedObject:representedObjectCopy];
  }

  return v11;
}

- (PXSearchToken)initWithText:(id)text image:(id)image representedObject:(id)object
{
  textCopy = text;
  imageCopy = image;
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = PXSearchToken;
  v11 = [(PXSearchToken *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69DCF30] tokenWithIcon:imageCopy text:textCopy];
    [(PXSearchToken *)v11 setSearchObject:v12];

    searchObject = [(PXSearchToken *)v11 searchObject];
    [searchObject setRepresentedObject:objectCopy];

    [(PXSearchToken *)v11 setRepresentedObject:objectCopy];
    [(PXSearchToken *)v11 setText:textCopy];
    [(PXSearchToken *)v11 setImage:imageCopy];
  }

  return v11;
}

@end