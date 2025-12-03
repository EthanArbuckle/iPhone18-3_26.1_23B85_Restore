@interface _TVShadowViewElementID
- (BOOL)isEqual:(id)equal;
- (_TVShadowViewElementID)init;
- (_TVShadowViewElementID)initWithViewElement:(id)element;
- (id)description;
- (unint64_t)hash;
@end

@implementation _TVShadowViewElementID

- (_TVShadowViewElementID)initWithViewElement:(id)element
{
  elementCopy = element;
  if (!elementCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The view element must not be nil."];
  }

  v15.receiver = self;
  v15.super_class = _TVShadowViewElementID;
  v7 = [(_TVShadowViewElementID *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewElement, element);
    attributes = [elementCopy attributes];
    v10 = [attributes objectForKeyedSubscript:@"itemID"];
    v11 = v10;
    if (!v10)
    {
      attributes2 = [elementCopy attributes];
      v11 = [attributes2 objectForKeyedSubscript:@"searchResultIdentifier"];
    }

    v12 = [v11 copy];
    itemID = v8->_itemID;
    v8->_itemID = v12;

    if (!v10)
    {
    }
  }

  return v8;
}

- (_TVShadowViewElementID)init
{
  [(_TVShadowViewElementID *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (unint64_t)hash
{
  itemID = [(_TVShadowViewElementID *)self itemID];
  if (itemID)
  {
    itemID2 = [(_TVShadowViewElementID *)self itemID];
    viewElement = [itemID2 hash];
  }

  else
  {
    viewElement = [(_TVShadowViewElementID *)self viewElement];
    itemID2 = viewElement;
  }

  v6 = viewElement;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    viewElement = [v5 viewElement];
    viewElement2 = [(_TVShadowViewElementID *)self viewElement];

    if (viewElement == viewElement2)
    {
      v10 = 1;
    }

    else
    {
      itemID = [v5 itemID];
      itemID2 = [(_TVShadowViewElementID *)self itemID];
      v10 = [itemID isEqualToString:itemID2];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, itemID: %@, viewElement: %@>", v5, self, self->_itemID, self->_viewElement];

  return v6;
}

@end