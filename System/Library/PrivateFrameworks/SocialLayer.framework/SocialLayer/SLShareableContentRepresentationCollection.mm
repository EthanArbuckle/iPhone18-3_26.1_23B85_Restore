@interface SLShareableContentRepresentationCollection
- (SLShareableContentRepresentationCollection)initWithBSXPCCoder:(id)coder;
- (SLShareableContentRepresentationCollection)initWithCoder:(id)coder;
- (SLShareableContentRepresentationCollection)initWithRepresentations:(id)representations suggestedFileName:(id)name;
- (id)description;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLShareableContentRepresentationCollection

- (SLShareableContentRepresentationCollection)initWithRepresentations:(id)representations suggestedFileName:(id)name
{
  representationsCopy = representations;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = SLShareableContentRepresentationCollection;
  v8 = [(SLShareableContentRepresentationCollection *)&v14 init];
  if (v8)
  {
    v9 = [representationsCopy copy];
    representations = v8->_representations;
    v8->_representations = v9;

    v11 = [nameCopy copy];
    suggestedFileName = v8->_suggestedFileName;
    v8->_suggestedFileName = v11;
  }

  return v8;
}

- (id)description
{
  suggestedFileName = [(SLShareableContentRepresentationCollection *)self suggestedFileName];
  v4 = [suggestedFileName length];

  v5 = MEMORY[0x277CCACA8];
  if (v4)
  {
    suggestedFileName2 = [(SLShareableContentRepresentationCollection *)self suggestedFileName];
    representations = [(SLShareableContentRepresentationCollection *)self representations];
    v8 = [v5 stringWithFormat:@"%@: %@", suggestedFileName2, representations];
  }

  else
  {
    suggestedFileName2 = [(SLShareableContentRepresentationCollection *)self representations];
    v8 = [v5 stringWithFormat:@"%@", suggestedFileName2];
  }

  return v8;
}

- (SLShareableContentRepresentationCollection)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_representations);
  v8 = [coderCopy decodeCollectionOfClass:v5 containingClass:v6 forKey:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_suggestedFileName);
  v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];

  v12 = [(SLShareableContentRepresentationCollection *)self initWithRepresentations:v8 suggestedFileName:v11];
  return v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  representations = [(SLShareableContentRepresentationCollection *)self representations];
  v6 = NSStringFromSelector(sel_representations);
  [coderCopy encodeCollection:representations forKey:v6];

  suggestedFileName = [(SLShareableContentRepresentationCollection *)self suggestedFileName];
  v7 = NSStringFromSelector(sel_suggestedFileName);
  [coderCopy encodeObject:suggestedFileName forKey:v7];
}

- (SLShareableContentRepresentationCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_representations);
  v7 = [coderCopy decodeArrayOfObjectsOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_suggestedFileName);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(SLShareableContentRepresentationCollection *)self initWithRepresentations:v7 suggestedFileName:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  representations = [(SLShareableContentRepresentationCollection *)self representations];
  v6 = NSStringFromSelector(sel_representations);
  [coderCopy encodeObject:representations forKey:v6];

  suggestedFileName = [(SLShareableContentRepresentationCollection *)self suggestedFileName];
  v7 = NSStringFromSelector(sel_suggestedFileName);
  [coderCopy encodeObject:suggestedFileName forKey:v7];
}

@end