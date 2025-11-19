@interface SLShareableContentRepresentationCollection
- (SLShareableContentRepresentationCollection)initWithBSXPCCoder:(id)a3;
- (SLShareableContentRepresentationCollection)initWithCoder:(id)a3;
- (SLShareableContentRepresentationCollection)initWithRepresentations:(id)a3 suggestedFileName:(id)a4;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLShareableContentRepresentationCollection

- (SLShareableContentRepresentationCollection)initWithRepresentations:(id)a3 suggestedFileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SLShareableContentRepresentationCollection;
  v8 = [(SLShareableContentRepresentationCollection *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    representations = v8->_representations;
    v8->_representations = v9;

    v11 = [v7 copy];
    suggestedFileName = v8->_suggestedFileName;
    v8->_suggestedFileName = v11;
  }

  return v8;
}

- (id)description
{
  v3 = [(SLShareableContentRepresentationCollection *)self suggestedFileName];
  v4 = [v3 length];

  v5 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v6 = [(SLShareableContentRepresentationCollection *)self suggestedFileName];
    v7 = [(SLShareableContentRepresentationCollection *)self representations];
    v8 = [v5 stringWithFormat:@"%@: %@", v6, v7];
  }

  else
  {
    v6 = [(SLShareableContentRepresentationCollection *)self representations];
    v8 = [v5 stringWithFormat:@"%@", v6];
  }

  return v8;
}

- (SLShareableContentRepresentationCollection)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_representations);
  v8 = [v4 decodeCollectionOfClass:v5 containingClass:v6 forKey:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_suggestedFileName);
  v11 = [v4 decodeObjectOfClass:v9 forKey:v10];

  v12 = [(SLShareableContentRepresentationCollection *)self initWithRepresentations:v8 suggestedFileName:v11];
  return v12;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentRepresentationCollection *)self representations];
  v6 = NSStringFromSelector(sel_representations);
  [v4 encodeCollection:v5 forKey:v6];

  v8 = [(SLShareableContentRepresentationCollection *)self suggestedFileName];
  v7 = NSStringFromSelector(sel_suggestedFileName);
  [v4 encodeObject:v8 forKey:v7];
}

- (SLShareableContentRepresentationCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_representations);
  v7 = [v4 decodeArrayOfObjectsOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_suggestedFileName);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(SLShareableContentRepresentationCollection *)self initWithRepresentations:v7 suggestedFileName:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentRepresentationCollection *)self representations];
  v6 = NSStringFromSelector(sel_representations);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(SLShareableContentRepresentationCollection *)self suggestedFileName];
  v7 = NSStringFromSelector(sel_suggestedFileName);
  [v4 encodeObject:v8 forKey:v7];
}

@end