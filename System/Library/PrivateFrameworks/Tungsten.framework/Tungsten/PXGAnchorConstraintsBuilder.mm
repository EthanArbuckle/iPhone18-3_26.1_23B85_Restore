@interface PXGAnchorConstraintsBuilder
- (NSArray)constraints;
- (PXGAnchorConstraintsBuilder)init;
- (void)_keepEdge:(unsigned int)edge ofSpriteWithReference:(id)reference referencingOptions:(unint64_t)options inequality:(int64_t)inequality visibleEdge:(unsigned int)visibleEdge offset:(double)offset;
- (void)keepSpriteWithReference:(id)reference referencingOptions:(unint64_t)options visuallyStableForAttribute:(int64_t)attribute;
- (void)keepVisiblePortionOfSpriteWithReference:(id)reference referencingOptions:(unint64_t)options padding:(UIEdgeInsets)padding visuallyStableForAttribute:(int64_t)attribute;
@end

@implementation PXGAnchorConstraintsBuilder

- (PXGAnchorConstraintsBuilder)init
{
  v6.receiver = self;
  v6.super_class = PXGAnchorConstraintsBuilder;
  v2 = [(PXGAnchorConstraintsBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    constraints = v2->_constraints;
    v2->_constraints = v3;
  }

  return v2;
}

- (NSArray)constraints
{
  v2 = [(NSMutableArray *)self->_constraints copy];

  return v2;
}

- (void)_keepEdge:(unsigned int)edge ofSpriteWithReference:(id)reference referencingOptions:(unint64_t)options inequality:(int64_t)inequality visibleEdge:(unsigned int)visibleEdge offset:(double)offset
{
  v9 = *&visibleEdge;
  v12 = *&edge;
  v21 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  if ((((v12 - 1) & 0xFFFFFFFD) != 0) == (((v9 - 1) & 0xFFFFFFFD) == 0))
  {
    v15 = PXAssertGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218240;
      v18 = v12;
      v19 = 2048;
      v20 = v9;
      _os_log_error_impl(&dword_21AD38000, v15, OS_LOG_TYPE_ERROR, "incompatible sprite edge %li with visible edge %li", &v17, 0x16u);
    }
  }

  v16 = objc_alloc_init(PXGAnchorConstraint);
  [(PXGAnchorConstraint *)v16 setSpriteEdge:v12];
  [(PXGAnchorConstraint *)v16 setSpriteReference:referenceCopy];
  [(PXGAnchorConstraint *)v16 setReferencingOptions:options];
  [(PXGAnchorConstraint *)v16 setInequality:inequality];
  [(PXGAnchorConstraint *)v16 setVisibleRectEdge:v9];
  [(PXGAnchorConstraint *)v16 setOffset:offset];
  [(NSMutableArray *)self->_constraints addObject:v16];
}

- (void)keepVisiblePortionOfSpriteWithReference:(id)reference referencingOptions:(unint64_t)options padding:(UIEdgeInsets)padding visuallyStableForAttribute:(int64_t)attribute
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  referenceCopy = reference;
  if (!attribute)
  {
    v14 = PXAssertGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_21AD38000, v14, OS_LOG_TYPE_ERROR, "invalid attribute", v16, 2u);
    }
  }

  v15 = objc_alloc_init(PXGAnchorConstraint);
  [(PXGAnchorConstraint *)v15 setVisiblePortionOnly:1];
  [(PXGAnchorConstraint *)v15 setSpriteReference:referenceCopy];
  [(PXGAnchorConstraint *)v15 setReferencingOptions:options];
  [(PXGAnchorConstraint *)v15 setPadding:top, left, bottom, right];
  [(PXGAnchorConstraint *)v15 setSpriteAttribute:attribute];
  [(NSMutableArray *)self->_constraints addObject:v15];
}

- (void)keepSpriteWithReference:(id)reference referencingOptions:(unint64_t)options visuallyStableForAttribute:(int64_t)attribute
{
  referenceCopy = reference;
  if (!attribute)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_21AD38000, v9, OS_LOG_TYPE_ERROR, "invalid attribute", v11, 2u);
    }
  }

  v10 = objc_alloc_init(PXGAnchorConstraint);
  [(PXGAnchorConstraint *)v10 setSpriteReference:referenceCopy];
  [(PXGAnchorConstraint *)v10 setReferencingOptions:options];
  [(PXGAnchorConstraint *)v10 setSpriteAttribute:attribute];
  [(NSMutableArray *)self->_constraints addObject:v10];
}

@end