@interface _TVShadowViewElementID
- (BOOL)isEqual:(id)a3;
- (_TVShadowViewElementID)init;
- (_TVShadowViewElementID)initWithViewElement:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _TVShadowViewElementID

- (_TVShadowViewElementID)initWithViewElement:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The view element must not be nil."];
  }

  v15.receiver = self;
  v15.super_class = _TVShadowViewElementID;
  v7 = [(_TVShadowViewElementID *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_viewElement, a3);
    v9 = [v6 attributes];
    v10 = [v9 objectForKeyedSubscript:@"itemID"];
    v11 = v10;
    if (!v10)
    {
      v3 = [v6 attributes];
      v11 = [v3 objectForKeyedSubscript:@"searchResultIdentifier"];
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
  v3 = [(_TVShadowViewElementID *)self itemID];
  if (v3)
  {
    v4 = [(_TVShadowViewElementID *)self itemID];
    v5 = [v4 hash];
  }

  else
  {
    v5 = [(_TVShadowViewElementID *)self viewElement];
    v4 = v5;
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 viewElement];
    v7 = [(_TVShadowViewElementID *)self viewElement];

    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [v5 itemID];
      v9 = [(_TVShadowViewElementID *)self itemID];
      v10 = [v8 isEqualToString:v9];
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