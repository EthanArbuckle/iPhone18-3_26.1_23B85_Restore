@interface _UIContentInsetsEnvironment
- (BOOL)isEqual:(id)equal;
- (double)_effectiveInsetsForInsetsReference:(unint64_t)reference minimumInsets:(double)result layoutAxis:;
- (double)effectiveInsets;
- (double)effectiveInsetsForInsetsReference:(uint64_t)reference;
- (id)description;
- (id)initWithInsetsReference:(double)reference safeAreaInsets:(double)insets layoutMarginsInsets:(double)marginsInsets readableContentInsets:(double)contentInsets scrollAccessoryInsets:(double)accessoryInsets minimumInsets:(double)minimumInsets;
- (id)initWithParentEnvironment:(uint64_t)environment insetsReference:(uint64_t)reference minimumInsets:(uint64_t)insets;
- (id)layoutContainerForContainerSize:(double)size layoutAxis:(double)axis;
- (id)layoutContainerForContainerSize:(uint64_t)size layoutAxis:(double)axis insetsReference:(double)reference minimumInsets:(double)insets;
@end

@implementation _UIContentInsetsEnvironment

- (double)effectiveInsets
{
  if (self)
  {
    return [(_UIContentInsetsEnvironment *)self _effectiveInsetsForInsetsReference:3uLL minimumInsets:*(self + 144) layoutAxis:?];
  }

  else
  {
    return 0.0;
  }
}

- (id)initWithInsetsReference:(double)reference safeAreaInsets:(double)insets layoutMarginsInsets:(double)marginsInsets readableContentInsets:(double)contentInsets scrollAccessoryInsets:(double)accessoryInsets minimumInsets:(double)minimumInsets
{
  if (result)
  {
    v37.receiver = result;
    v37.super_class = _UIContentInsetsEnvironment;
    result = objc_msgSendSuper2(&v37, sel_init);
    if (result)
    {
      *(result + 1) = a2;
      *(result + 2) = reference;
      *(result + 3) = insets;
      *(result + 4) = marginsInsets;
      *(result + 5) = contentInsets;
      *(result + 6) = accessoryInsets;
      *(result + 7) = minimumInsets;
      *(result + 8) = a9;
      *(result + 9) = a10;
      *(result + 10) = a17;
      *(result + 11) = a18;
      *(result + 12) = a19;
      *(result + 13) = a20;
      *(result + 14) = a21;
      *(result + 15) = a22;
      *(result + 16) = a23;
      *(result + 17) = a24;
      *(result + 18) = a25;
      *(result + 19) = a26;
      *(result + 20) = a27;
      *(result + 21) = a28;
    }
  }

  return result;
}

- (id)initWithParentEnvironment:(uint64_t)environment insetsReference:(uint64_t)reference minimumInsets:(uint64_t)insets
{
  if (result)
  {
    environmentCopy = environment;
    v17 = result;
    if (a2)
    {
      if (!environment)
      {
        if (*(a2 + 1) <= 1uLL)
        {
          environmentCopy = 1;
        }

        else
        {
          environmentCopy = *(a2 + 1);
        }
      }

      v18 = a2[2];
      v19 = a2[3];
      v20 = a2[4];
      v21 = a2[5];
      v22 = a2[6];
      v23 = a2[7];
      v24 = a2[8];
      v25 = a2[9];
      v26 = *(a2 + 10);
      v27 = *(a2 + 11);
      v29 = *(a2 + 12);
      v28 = *(a2 + 13);
      v31 = *(a2 + 14);
      v30 = *(a2 + 15);
      v32 = *(a2 + 16);
      v33 = *(a2 + 17);
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIContentInsetsEnvironment initWithParentEnvironment:insetsReference:minimumInsets:]"];
      [currentHandler handleFailureInFunction:v35 file:@"_UICollectionLayoutHelpers.m" lineNumber:2321 description:{@"Invalid parameter not satisfying: %@", @"parentEnvironment != nil"}];

      v26 = 0;
      v28 = 0;
      if (environmentCopy <= 1)
      {
        environmentCopy = 1;
      }

      v29 = 0;
      v27 = 0;
      v18 = 0.0;
      v21 = 0.0;
      v20 = 0.0;
      v19 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v22 = 0.0;
      v30 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
    }

    return [(_UIContentInsetsEnvironment *)v17 initWithInsetsReference:environmentCopy safeAreaInsets:v18 layoutMarginsInsets:v19 readableContentInsets:v20 scrollAccessoryInsets:v21 minimumInsets:v22, v23, v24, v25, environment, reference, insets, a6, a7, a8, v26, v27, v29, v28, v31, v30, v32, v33, *&a9, *&a10, *&a11, *&a12];
  }

  return result;
}

- (id)layoutContainerForContainerSize:(double)size layoutAxis:(double)axis
{
  if (self)
  {
    self = [(_UIContentInsetsEnvironment *)self layoutContainerForContainerSize:a2 layoutAxis:*(self + 8) insetsReference:size minimumInsets:axis, *(self + 144)];
    v4 = vars8;
  }

  return self;
}

- (id)layoutContainerForContainerSize:(uint64_t)size layoutAxis:(double)axis insetsReference:(double)reference minimumInsets:(double)insets
{
  if (self)
  {
    selfCopy = self;
    v10 = [(_UIContentInsetsEnvironment *)self _effectiveInsetsForInsetsReference:size minimumInsets:a2 layoutAxis:insets];
    self = [[_UICollectionLayoutContainer alloc] initWithContentSize:selfCopy contentInsets:axis insetsEnvironment:reference, v10, v11, v12, v13];
    v6 = vars8;
  }

  return self;
}

- (double)_effectiveInsetsForInsetsReference:(unint64_t)reference minimumInsets:(double)result layoutAxis:
{
  if (!self)
  {
    return 0.0;
  }

  if (!a2)
  {
    if (*(self + 8) <= 1uLL)
    {
      a2 = 1;
    }

    else
    {
      a2 = *(self + 8);
    }
  }

  referenceCopy = reference == 2;
  if (reference == 1)
  {
    referenceCopy = 2;
  }

  if (reference - 1 >= 2)
  {
    referenceCopy = reference;
  }

  v5 = 0.0;
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      if (referenceCopy >= 2)
      {
        v5 = *(self + 16);
        goto LABEL_21;
      }

LABEL_24:
      result = 0.0;
      goto LABEL_25;
    }

    return 0.0;
  }

  if (a2 == 3)
  {
    if (referenceCopy < 2)
    {
      goto LABEL_24;
    }

    v5 = *(self + 48);
  }

  else
  {
    if (a2 != 4)
    {
      goto LABEL_22;
    }

    if (referenceCopy < 2)
    {
      goto LABEL_24;
    }

    v5 = *(self + 80);
  }

LABEL_21:
  if (referenceCopy == 2)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (referenceCopy < 2)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (v5 >= result)
  {
    return v5;
  }

  return result;
}

- (double)effectiveInsetsForInsetsReference:(uint64_t)reference
{
  if (reference)
  {
    return [(_UIContentInsetsEnvironment *)reference _effectiveInsetsForInsetsReference:a2 minimumInsets:3uLL layoutAxis:*(reference + 144)];
  }

  else
  {
    return 0.0;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    v23 = 1;
    return v23 & 1;
  }

  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (self)
  {
    insetsReference = self->_insetsReference;
    if (equalCopy)
    {
LABEL_5:
      v6 = *(equalCopy + 1);
      goto LABEL_6;
    }
  }

  else
  {
    insetsReference = 0;
    if (equalCopy)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_6:
  if (insetsReference != v6)
  {
    goto LABEL_23;
  }

  v7 = 0uLL;
  if (self)
  {
    v9 = *&self->_safeAreaInsets.top;
    v8 = *&self->_safeAreaInsets.bottom;
    if (equalCopy)
    {
LABEL_9:
      v7 = *(equalCopy + 1);
      v10 = *(equalCopy + 2);
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0uLL;
    v8 = 0uLL;
    if (equalCopy)
    {
      goto LABEL_9;
    }
  }

  v10 = 0uLL;
LABEL_10:
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, v7), vceqq_f64(v8, v10)))) & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = 0uLL;
  if (self)
  {
    v13 = *&self->_layoutMarginsInsets.top;
    v12 = *&self->_layoutMarginsInsets.bottom;
    if (equalCopy)
    {
LABEL_13:
      v11 = *(equalCopy + 3);
      v14 = *(equalCopy + 4);
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0uLL;
    v12 = 0uLL;
    if (equalCopy)
    {
      goto LABEL_13;
    }
  }

  v14 = 0uLL;
LABEL_14:
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, v11), vceqq_f64(v12, v14)))) & 1) == 0)
  {
    goto LABEL_23;
  }

  v15 = 0uLL;
  if (self)
  {
    v17 = *&self->_readableContentInsets.top;
    v16 = *&self->_readableContentInsets.bottom;
    if (equalCopy)
    {
LABEL_17:
      v15 = *(equalCopy + 5);
      v18 = *(equalCopy + 6);
      goto LABEL_18;
    }
  }

  else
  {
    v17 = 0uLL;
    v16 = 0uLL;
    if (equalCopy)
    {
      goto LABEL_17;
    }
  }

  v18 = 0uLL;
LABEL_18:
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v17, v15), vceqq_f64(v16, v18)))))
  {
    v19 = 0uLL;
    if (self)
    {
      v21 = *&self->_scrollAccessoryInsets.top;
      v20 = *&self->_scrollAccessoryInsets.bottom;
      if (equalCopy)
      {
LABEL_21:
        v19 = *(equalCopy + 7);
        v22 = *(equalCopy + 8);
        goto LABEL_22;
      }
    }

    else
    {
      v21 = 0uLL;
      v20 = 0uLL;
      if (equalCopy)
      {
        goto LABEL_21;
      }
    }

    v22 = 0uLL;
LABEL_22:
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, v19), vceqq_f64(v20, v22)))) & 1) == 0)
    {
      goto LABEL_23;
    }

    v25 = 0uLL;
    if (self)
    {
      v27 = *&self->_minimumInsets.top;
      v26 = *&self->_minimumInsets.bottom;
      if (equalCopy)
      {
LABEL_29:
        v25 = *(equalCopy + 9);
        v28 = *(equalCopy + 10);
LABEL_30:
        v23 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v27, v25), vceqq_f64(v26, v28))));
        goto LABEL_24;
      }
    }

    else
    {
      v27 = 0uLL;
      v26 = 0uLL;
      if (equalCopy)
      {
        goto LABEL_29;
      }
    }

    v28 = 0uLL;
    goto LABEL_30;
  }

LABEL_23:
  v23 = 0;
LABEL_24:

  return v23 & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    insetsReference = self->_insetsReference;
    if (insetsReference >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown value: %ld)", self->_insetsReference];
    }

    else
    {
      v7 = off_1E70FAEB8[insetsReference];
    }
  }

  else
  {
    v7 = @"Automatic";
  }

  v12.top = [(_UIContentInsetsEnvironment *)self effectiveInsets];
  v8 = NSStringFromDirectionalEdgeInsets(v12);
  v9 = [v3 stringWithFormat:@"<%@ %p: insetReference=%@ insets=%@>", v5, self, v7, v8];;

  return v9;
}

@end