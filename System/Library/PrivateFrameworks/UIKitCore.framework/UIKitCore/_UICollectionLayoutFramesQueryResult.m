@interface _UICollectionLayoutFramesQueryResult
+ (void)kindIndexKeyForKind:(uint64_t)a3 index:;
- (id)copyWithFrame:(double)a3 index:(double)a4;
- (id)copyWithIndex:(id *)result;
- (id)copyWithOffset:(double)a3;
- (id)copyWithOffset:(void *)a3 index:(double)a4 supplementaryEnrollmentIdentifier:(double)a5;
- (id)description;
- (id)initWithFrame:(int)a3 pinningAlignment:(void *)a4 adjustedForPinning:(void *)a5 visibleRectDisplacement:(void *)a6 index:(void *)a7 zIndex:(void *)a8 resultKind:(double)a9 item:(double)a10 auxillaryKind:(double)a11 supplementaryEnrollmentIdentifier:(double)a12;
- (id)supplementaryItem;
- (uint64_t)kindIndexKey;
- (void)auxillaryItem;
@end

@implementation _UICollectionLayoutFramesQueryResult

- (void)auxillaryItem
{
  if (a1)
  {
    if ((a1[4] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v2 = a1[5];
    }

    else
    {
      v2 = 0;
    }

    a1 = v2;
  }

  return a1;
}

- (id)supplementaryItem
{
  if (a1)
  {
    v2 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a1 = v2[5];
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

- (uint64_t)kindIndexKey
{
  v1 = a1;
  if (a1)
  {
    v2 = [(_UICollectionLayoutFramesQueryResult *)a1 auxillaryItem];
    if (!v2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_kindIndexKey object:v1 file:@"_UICollectionLayoutHelpers.m" lineNumber:1347 description:{@"Invalid parameter not satisfying: %@", @"auxillaryItem"}];
    }

    v3 = [v2 elementKind];
    v1 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:v3 index:v1[2]];
  }

  return v1;
}

- (id)initWithFrame:(int)a3 pinningAlignment:(void *)a4 adjustedForPinning:(void *)a5 visibleRectDisplacement:(void *)a6 index:(void *)a7 zIndex:(void *)a8 resultKind:(double)a9 item:(double)a10 auxillaryKind:(double)a11 supplementaryEnrollmentIdentifier:(double)a12
{
  v14 = a1;
  if (a1)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (a2)
    {
      v28 = 0;
    }

    else
    {
      v28 = a3;
    }

    if (has_internal_diagnostics)
    {
      if (v28)
      {
        v31 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v31, OS_LOG_TYPE_FAULT, "Cannot be adjusted for pinning with pinningAlignment = NSRectAlignmentNone", buf, 2u);
        }
      }
    }

    else if (v28)
    {
      v32 = *(__UILogGetCategoryCachedImpl("Assert", &initWithFrame_pinningAlignment_adjustedForPinning_visibleRectDisplacement_index_zIndex_resultKind_item_auxillaryKind_supplementaryEnrollmentIdentifier____s_category) + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Cannot be adjusted for pinning with pinningAlignment = NSRectAlignmentNone", buf, 2u);
      }
    }

    if (a6 == 2 && !a14)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:sel_initWithFrame_pinningAlignment_adjustedForPinning_visibleRectDisplacement_index_zIndex_resultKind_item_auxillaryKind_supplementaryEnrollmentIdentifier_ object:v14 file:@"_UICollectionLayoutHelpers.m" lineNumber:1271 description:{@"Invalid parameter not satisfying: %@", @"supplementaryEnrollmentIdentifier"}];
    }

    v34.receiver = v14;
    v34.super_class = _UICollectionLayoutFramesQueryResult;
    v29 = objc_msgSendSuper2(&v34, sel_init);
    v14 = v29;
    if (v29)
    {
      *(v29 + 11) = a10;
      *(v29 + 12) = a11;
      *(v29 + 13) = a12;
      v29[8] = a2;
      *(v29 + 8) = a3;
      *(v29 + 9) = a13;
      *(v29 + 10) = a9;
      v29[2] = a4;
      v29[3] = a5;
      v29[4] = a6;
      objc_storeStrong(v29 + 5, a7);
      v14[6] = a8;
      objc_storeStrong(v14 + 7, a14);
    }
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGRect(self->_frame);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_index];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_zIndex];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resultKind];
  v10 = [v3 stringWithFormat:@"<%@ %p: frame=%@ index=%@; zIndex=%@ resultKind=%@", v5, self, v6, v7, v8, v9];;

  if (self->_supplementaryEnrollmentIdentifier)
  {
    [v10 stringByAppendingFormat:@"; supplementaryEnrollmentIdentifier=%@>", self->_supplementaryEnrollmentIdentifier];
  }

  else
  {
    [v10 stringByAppendingString:@">"];
  }
  v11 = ;

  return v11;
}

+ (void)kindIndexKeyForKind:(uint64_t)a3 index:
{
  v5 = objc_opt_self();
  if ([a2 length])
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:sel_kindIndexKeyForKind_index_ object:v5 file:@"_UICollectionLayoutHelpers.m" lineNumber:1353 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];

    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:sel_kindIndexKeyForKind_index_ object:v5 file:@"_UICollectionLayoutHelpers.m" lineNumber:1354 description:{@"Invalid parameter not satisfying: %@", @"index>=0"}];

LABEL_3:
  objc_opt_self();
  v6 = [_UICollectionLayoutFramesQueryResultElementIndexKey alloc];
  if (v6)
  {
    v12.receiver = v6;
    v12.super_class = _UICollectionLayoutFramesQueryResultElementIndexKey;
    v7 = objc_msgSendSuper2(&v12, sel_init);
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a2);
      v8[2] = a3;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithOffset:(void *)a3 index:(double)a4 supplementaryEnrollmentIdentifier:(double)a5
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 10);
    v9 = *(result + 11);
    v10 = *(result + 12);
    v11 = *(result + 13);
    v12 = a4 + v8;
    v13 = a5 + v9;
    v16.origin.x = v8;
    v16.origin.y = v9;
    v16.size.width = v10;
    v16.size.height = v11;
    Width = CGRectGetWidth(v16);
    v17.origin.x = v8;
    v17.origin.y = v9;
    v17.size.width = v10;
    v17.size.height = v11;
    Height = CGRectGetHeight(v17);
    return [[_UICollectionLayoutFramesQueryResult alloc] initWithFrame:*(v7 + 8) pinningAlignment:a2 adjustedForPinning:v7[3] visibleRectDisplacement:v7[4] index:v7[5] zIndex:v7[6] resultKind:v12 item:v13 auxillaryKind:Width supplementaryEnrollmentIdentifier:Height, *(v7 + 9), a3];
  }

  return result;
}

- (id)copyWithOffset:(double)a3
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 10);
    v5 = *(result + 11);
    v6 = *(result + 12);
    v7 = *(result + 13);
    v8 = a2 + v4;
    v9 = a3 + v5;
    v12.origin.x = v4;
    v12.origin.y = v5;
    v12.size.width = v6;
    v12.size.height = v7;
    Width = CGRectGetWidth(v12);
    v13.origin.x = v4;
    v13.origin.y = v5;
    v13.size.width = v6;
    v13.size.height = v7;
    Height = CGRectGetHeight(v13);
    return [[_UICollectionLayoutFramesQueryResult alloc] initWithFrame:*(v3 + 8) pinningAlignment:v3[2] adjustedForPinning:v3[3] visibleRectDisplacement:v3[4] index:v3[5] zIndex:v3[6] resultKind:v8 item:v9 auxillaryKind:Width supplementaryEnrollmentIdentifier:Height, *(v3 + 9), v3[7]];
  }

  return result;
}

- (id)copyWithFrame:(double)a3 index:(double)a4
{
  if (result)
  {
    return [[_UICollectionLayoutFramesQueryResult alloc] initWithFrame:*(result + 8) pinningAlignment:a2 adjustedForPinning:result[3] visibleRectDisplacement:result[4] index:result[5] zIndex:result[6] resultKind:a3 item:a4 auxillaryKind:a5 supplementaryEnrollmentIdentifier:a6, *(result + 9), result[7]];
  }

  return result;
}

- (id)copyWithIndex:(id *)result
{
  if (result)
  {
    return [[_UICollectionLayoutFramesQueryResult alloc] initWithFrame:*(result + 8) pinningAlignment:a2 adjustedForPinning:result[3] visibleRectDisplacement:result[4] index:result[5] zIndex:result[6] resultKind:*(result + 10) item:*(result + 11) auxillaryKind:*(result + 12) supplementaryEnrollmentIdentifier:*(result + 13), *(result + 9), result[7]];
  }

  return result;
}

@end