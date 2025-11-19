@interface PXSearchToken
- (PXSearchToken)initWithAttributedText:(id)a3 searchObject:(id)a4 representedObject:(id)a5;
- (PXSearchToken)initWithText:(id)a3 image:(id)a4 representedObject:(id)a5;
- (PXSearchToken)initWithText:(id)a3 searchObject:(id)a4 representedObject:(id)a5;
- (id)textValue;
@end

@implementation PXSearchToken

- (id)textValue
{
  v3 = [(PXSearchToken *)self attributedText];
  v4 = [v3 string];
  if ([v4 length])
  {
    v5 = [(PXSearchToken *)self attributedText];
    v6 = [v5 string];
  }

  else
  {
    v6 = [(PXSearchToken *)self text];
  }

  if (![v6 length])
  {
    PXAssertGetLog();
  }

  return v6;
}

- (PXSearchToken)initWithText:(id)a3 searchObject:(id)a4 representedObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PXSearchToken;
  v11 = [(PXSearchToken *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69DCF30] tokenWithIcon:0 text:v8];
    [(PXSearchToken *)v11 setSearchObject:v12];

    v13 = [(PXSearchToken *)v11 searchObject];
    [v13 setRepresentedObject:v10];

    [(PXSearchToken *)v11 setText:v8];
    [(PXSearchToken *)v11 setSearchObject:v9];
    [(PXSearchToken *)v11 setRepresentedObject:v10];
  }

  return v11;
}

- (PXSearchToken)initWithAttributedText:(id)a3 searchObject:(id)a4 representedObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = PXSearchToken;
  v11 = [(PXSearchToken *)&v17 init];
  if (v11)
  {
    v12 = MEMORY[0x1E69DCF30];
    v13 = [v8 string];
    v14 = [v12 tokenWithIcon:0 text:v13];
    [(PXSearchToken *)v11 setSearchObject:v14];

    v15 = [(PXSearchToken *)v11 searchObject];
    [v15 setRepresentedObject:v10];

    [(PXSearchToken *)v11 setAttributedText:v8];
    [(PXSearchToken *)v11 setSearchObject:v9];
    [(PXSearchToken *)v11 setRepresentedObject:v10];
  }

  return v11;
}

- (PXSearchToken)initWithText:(id)a3 image:(id)a4 representedObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PXSearchToken;
  v11 = [(PXSearchToken *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69DCF30] tokenWithIcon:v9 text:v8];
    [(PXSearchToken *)v11 setSearchObject:v12];

    v13 = [(PXSearchToken *)v11 searchObject];
    [v13 setRepresentedObject:v10];

    [(PXSearchToken *)v11 setRepresentedObject:v10];
    [(PXSearchToken *)v11 setText:v8];
    [(PXSearchToken *)v11 setImage:v9];
  }

  return v11;
}

@end