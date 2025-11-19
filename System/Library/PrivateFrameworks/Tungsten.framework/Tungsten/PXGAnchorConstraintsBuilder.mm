@interface PXGAnchorConstraintsBuilder
- (NSArray)constraints;
- (PXGAnchorConstraintsBuilder)init;
- (void)_keepEdge:(unsigned int)a3 ofSpriteWithReference:(id)a4 referencingOptions:(unint64_t)a5 inequality:(int64_t)a6 visibleEdge:(unsigned int)a7 offset:(double)a8;
- (void)keepSpriteWithReference:(id)a3 referencingOptions:(unint64_t)a4 visuallyStableForAttribute:(int64_t)a5;
- (void)keepVisiblePortionOfSpriteWithReference:(id)a3 referencingOptions:(unint64_t)a4 padding:(UIEdgeInsets)a5 visuallyStableForAttribute:(int64_t)a6;
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

- (void)_keepEdge:(unsigned int)a3 ofSpriteWithReference:(id)a4 referencingOptions:(unint64_t)a5 inequality:(int64_t)a6 visibleEdge:(unsigned int)a7 offset:(double)a8
{
  v9 = *&a7;
  v12 = *&a3;
  v21 = *MEMORY[0x277D85DE8];
  v14 = a4;
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
  [(PXGAnchorConstraint *)v16 setSpriteReference:v14];
  [(PXGAnchorConstraint *)v16 setReferencingOptions:a5];
  [(PXGAnchorConstraint *)v16 setInequality:a6];
  [(PXGAnchorConstraint *)v16 setVisibleRectEdge:v9];
  [(PXGAnchorConstraint *)v16 setOffset:a8];
  [(NSMutableArray *)self->_constraints addObject:v16];
}

- (void)keepVisiblePortionOfSpriteWithReference:(id)a3 referencingOptions:(unint64_t)a4 padding:(UIEdgeInsets)a5 visuallyStableForAttribute:(int64_t)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v13 = a3;
  if (!a6)
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
  [(PXGAnchorConstraint *)v15 setSpriteReference:v13];
  [(PXGAnchorConstraint *)v15 setReferencingOptions:a4];
  [(PXGAnchorConstraint *)v15 setPadding:top, left, bottom, right];
  [(PXGAnchorConstraint *)v15 setSpriteAttribute:a6];
  [(NSMutableArray *)self->_constraints addObject:v15];
}

- (void)keepSpriteWithReference:(id)a3 referencingOptions:(unint64_t)a4 visuallyStableForAttribute:(int64_t)a5
{
  v8 = a3;
  if (!a5)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_21AD38000, v9, OS_LOG_TYPE_ERROR, "invalid attribute", v11, 2u);
    }
  }

  v10 = objc_alloc_init(PXGAnchorConstraint);
  [(PXGAnchorConstraint *)v10 setSpriteReference:v8];
  [(PXGAnchorConstraint *)v10 setReferencingOptions:a4];
  [(PXGAnchorConstraint *)v10 setSpriteAttribute:a5];
  [(NSMutableArray *)self->_constraints addObject:v10];
}

@end