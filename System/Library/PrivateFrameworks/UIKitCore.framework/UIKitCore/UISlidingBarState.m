@interface UISlidingBarState
- (BOOL)_leadingEntirelyOverlapsMain;
- (BOOL)_supplementaryEntirelyOverlapsMain;
- (BOOL)_trailingEntirelyOverlapsMain;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLeadingVisible;
- (BOOL)isSupplementaryVisible;
- (BOOL)isTrailingVisible;
- (BOOL)leadingOverlapsMain;
- (BOOL)supplementaryOverlapsMain;
- (BOOL)trailingOverlapsMain;
- (UISlidingBarConfiguration)configuration;
- (double)_absoluteDistanceFromRequest:(id)a3;
- (double)_distanceFromRequest:(id)a3;
- (id)_interactiveStateRequest;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)stateRequest;
- (unint64_t)hash;
@end

@implementation UISlidingBarState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(UISlidingBarState *)self leadingWidth];
  [v4 setLeadingWidth:?];
  [(UISlidingBarState *)self leadingOffscreenWidth];
  [v4 setLeadingOffscreenWidth:?];
  [(UISlidingBarState *)self trailingWidth];
  [v4 setTrailingWidth:?];
  [(UISlidingBarState *)self trailingOffscreenWidth];
  [v4 setTrailingOffscreenWidth:?];
  [(UISlidingBarState *)self supplementaryWidth];
  [v4 setSupplementaryWidth:?];
  [(UISlidingBarState *)self supplementaryOffscreenWidth];
  [v4 setSupplementaryOffscreenWidth:?];
  [(UISlidingBarState *)self _rubberBandInset];
  [v4 set_rubberBandInset:?];
  [(UISlidingBarState *)self mainWidth];
  [v4 setMainWidth:?];
  [(UISlidingBarState *)self leadingDragOffset];
  [v4 setLeadingDragOffset:?];
  [(UISlidingBarState *)self trailingDragOffset];
  [v4 setTrailingDragOffset:?];
  [(UISlidingBarState *)self supplementaryDragOffset];
  [v4 setSupplementaryDragOffset:?];
  [(UISlidingBarState *)self _leadingOverlayWidth];
  [v4 _setLeadingOverlayWidth:?];
  [(UISlidingBarState *)self _trailingOverlayWidth];
  [v4 _setTrailingOverlayWidth:?];
  [(UISlidingBarState *)self _supplementaryOverlayWidth];
  [v4 _setSupplementaryOverlayWidth:?];
  [v4 _setTreatLeadingHiddenAsOverlaps:{-[UISlidingBarState _treatLeadingHiddenAsOverlaps](self, "_treatLeadingHiddenAsOverlaps")}];
  [v4 _setTreatTrailingHiddenAsOverlaps:{-[UISlidingBarState _treatTrailingHiddenAsOverlaps](self, "_treatTrailingHiddenAsOverlaps")}];
  [v4 _setTreatSupplementaryHiddenAsOverlaps:{-[UISlidingBarState _treatSupplementaryHiddenAsOverlaps](self, "_treatSupplementaryHiddenAsOverlaps")}];
  v5 = [(UISlidingBarState *)self configuration];
  [v4 setConfiguration:v5];

  [v4 _setCollapsedState:{-[UISlidingBarState _collapsedState](self, "_collapsedState")}];
  [(UISlidingBarState *)self _keyboardAdjustment];
  [v4 set_keyboardAdjustment:?];
  return v4;
}

- (id)description
{
  v19.receiver = self;
  v19.super_class = UISlidingBarState;
  v3 = [(UISlidingBarState *)&v19 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __32__UISlidingBarState_description__block_invoke;
    aBlock[3] = &unk_1E7103AD0;
    v6 = v4;
    v18 = v6;
    v7 = _Block_copy(aBlock);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __32__UISlidingBarState_description__block_invoke_2;
    v15 = &unk_1E7103AF8;
    v8 = v6;
    v16 = v8;
    v9 = _Block_copy(&v12);
    v7[2](v7, @"leadingWidth", 1, self->_leadingWidth);
    v7[2](v7, @"leadingOffscreenWidth", 1, self->_leadingOffscreenWidth);
    [(UISlidingBarState *)self _leadingOverlayWidth];
    (v7[2])(v7, @"leadingOverlayWidth", 1);
    v7[2](v7, @"trailingWidth", 1, self->_trailingWidth);
    v7[2](v7, @"trailingOffscreenWidth", 1, self->_trailingOffscreenWidth);
    [(UISlidingBarState *)self _trailingOverlayWidth];
    (v7[2])(v7, @"trailingOverlayWidth", 1);
    v7[2](v7, @"supplementaryWidth", 1, self->_supplementaryWidth);
    v7[2](v7, @"supplementaryOffscreenWidth", 1, self->_supplementaryOffscreenWidth);
    [(UISlidingBarState *)self _supplementaryOverlayWidth];
    (v7[2])(v7, @"supplementaryOverlayWidth", 1);
    [(UISlidingBarState *)self _rubberBandInset];
    (v7[2])(v7, @"rubberBandInset", 1);
    v7[2](v7, @"mainWidth", 1, self->_mainWidth);
    v7[2](v7, @"leadingDragOffset", 1, self->_leadingDragOffset);
    v7[2](v7, @"trailingDragOffset", 1, self->_trailingDragOffset);
    v7[2](v7, @"supplementaryDragOffset", 1, self->_supplementaryDragOffset);
    v9[2](v9, [(UISlidingBarState *)self leadingOverlapsMain], @"leadingOverlapsMain", 1);
    v9[2](v9, [(UISlidingBarState *)self trailingOverlapsMain], @"trailingOverlapsMain", 1);
    v9[2](v9, [(UISlidingBarState *)self supplementaryOverlapsMain], @"supplementaryOverlapsMain", 1);
    configuration = self->_configuration;
    v11 = _StringFromCollapsedState([(UISlidingBarState *)self _collapsedState]);
    [v8 appendFormat:@" configuration=%p collapsedState=%@", configuration, v11, v12, v13, v14, v15];
  }

  return v4;
}

uint64_t __32__UISlidingBarState_description__block_invoke(uint64_t result, uint64_t a2, char a3, double a4)
{
  if (a4 != 0.0 || (a3 & 1) == 0)
  {
    return [*(result + 32) appendFormat:@" %@=%g", a2, *&a4, v4, v5];
  }

  return result;
}

void __32__UISlidingBarState_description__block_invoke_2(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  if (a4)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    v8 = *(a1 + 32);
    v11 = v7;
    v9 = @" %@";
  }

  else
  {
    v8 = *(a1 + 32);
    v10 = @"NO";
    if (a2)
    {
      v10 = @"YES";
    }

    v11 = v7;
    v12 = v10;
    v9 = @" %@=%@";
  }

  v13 = v7;
  [v8 appendFormat:v9, v11, v12];
  v7 = v13;
LABEL_8:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    [(UISlidingBarState *)self leadingWidth];
    v7 = v6;
    [v5 leadingWidth];
    if (v7 == v8 && (-[UISlidingBarState _leadingOverlayWidth](self, "_leadingOverlayWidth"), v10 = v9, [v5 _leadingOverlayWidth], v10 == v11) && (-[UISlidingBarState leadingOffscreenWidth](self, "leadingOffscreenWidth"), v13 = v12, objc_msgSend(v5, "leadingOffscreenWidth"), v13 == v14) && (-[UISlidingBarState trailingWidth](self, "trailingWidth"), v16 = v15, objc_msgSend(v5, "trailingWidth"), v16 == v17) && (-[UISlidingBarState _trailingOverlayWidth](self, "_trailingOverlayWidth"), v19 = v18, objc_msgSend(v5, "_trailingOverlayWidth"), v19 == v20) && (-[UISlidingBarState trailingOffscreenWidth](self, "trailingOffscreenWidth"), v22 = v21, objc_msgSend(v5, "trailingOffscreenWidth"), v22 == v23) && (-[UISlidingBarState supplementaryWidth](self, "supplementaryWidth"), v25 = v24, objc_msgSend(v5, "supplementaryWidth"), v25 == v26) && (-[UISlidingBarState supplementaryOffscreenWidth](self, "supplementaryOffscreenWidth"), v28 = v27, objc_msgSend(v5, "supplementaryOffscreenWidth"), v28 == v29) && (-[UISlidingBarState _supplementaryOverlayWidth](self, "_supplementaryOverlayWidth"), v31 = v30, objc_msgSend(v5, "_supplementaryOverlayWidth"), v31 == v32) && (-[UISlidingBarState _rubberBandInset](self, "_rubberBandInset"), v34 = v33, objc_msgSend(v5, "_rubberBandInset"), v34 == v35) && (-[UISlidingBarState mainWidth](self, "mainWidth"), v37 = v36, objc_msgSend(v5, "mainWidth"), v37 == v38) && (-[UISlidingBarState leadingDragOffset](self, "leadingDragOffset"), v40 = v39, objc_msgSend(v5, "leadingDragOffset"), v40 == v41) && (-[UISlidingBarState trailingDragOffset](self, "trailingDragOffset"), v43 = v42, objc_msgSend(v5, "trailingDragOffset"), v43 == v44) && (-[UISlidingBarState supplementaryDragOffset](self, "supplementaryDragOffset"), v46 = v45, objc_msgSend(v5, "supplementaryDragOffset"), v46 == v47) && (v48 = -[UISlidingBarState leadingOverlapsMain](self, "leadingOverlapsMain"), v48 == objc_msgSend(v5, "leadingOverlapsMain")) && (v49 = -[UISlidingBarState trailingOverlapsMain](self, "trailingOverlapsMain"), v49 == objc_msgSend(v5, "trailingOverlapsMain")))
    {
      v52 = [(UISlidingBarState *)self _configuration];
      v53 = [v5 _configuration];
      if ([v52 isEqual:v53] && (v54 = -[UISlidingBarState _collapsedState](self, "_collapsedState"), v54 == objc_msgSend(v5, "_collapsedState")))
      {
        [(UISlidingBarState *)self _keyboardAdjustment];
        v56 = v55;
        [v5 _keyboardAdjustment];
        v50 = v56 == v57;
      }

      else
      {
        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

- (unint64_t)hash
{
  [(UISlidingBarState *)self leadingWidth];
  v4 = v3;
  [(UISlidingBarState *)self trailingWidth];
  v6 = v5 ^ v4;
  [(UISlidingBarState *)self supplementaryWidth];
  v8 = v7;
  v9 = [(UISlidingBarState *)self _configuration];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)supplementaryOverlapsMain
{
  [(UISlidingBarState *)self _supplementaryOverlayWidth];
  if (v3 > 0.0)
  {
    return 1;
  }

  [(UISlidingBarState *)self supplementaryWidth];
  if (v5 != 0.0)
  {
    return 0;
  }

  return [(UISlidingBarState *)self _treatSupplementaryHiddenAsOverlaps];
}

- (BOOL)_supplementaryEntirelyOverlapsMain
{
  v3 = [(UISlidingBarState *)self supplementaryOverlapsMain];
  if (v3)
  {
    [(UISlidingBarState *)self _supplementaryOverlayWidth];
    v5 = v4;
    [(UISlidingBarState *)self supplementaryWidth];
    LOBYTE(v3) = v5 == v6;
  }

  return v3;
}

- (BOOL)leadingOverlapsMain
{
  [(UISlidingBarState *)self _leadingOverlayWidth];
  if (v3 > 0.0)
  {
    return 1;
  }

  [(UISlidingBarState *)self leadingWidth];
  if (v4 == 0.0 && [(UISlidingBarState *)self _treatLeadingHiddenAsOverlaps])
  {
    return 1;
  }

  v5 = [(UISlidingBarState *)self _configuration];
  if (![v5 supplementaryEdge])
  {
    v6 = [(UISlidingBarState *)self supplementaryOverlapsMain];

    return v6;
  }

  return 0;
}

- (BOOL)_leadingEntirelyOverlapsMain
{
  if ([(UISlidingBarState *)self leadingOverlapsMain])
  {
    [(UISlidingBarState *)self _leadingOverlayWidth];
    v4 = v3;
    [(UISlidingBarState *)self leadingWidth];
    if (v4 == v5)
    {
      return 1;
    }
  }

  v6 = [(UISlidingBarState *)self _configuration];
  if (![v6 supplementaryEdge])
  {
    v7 = [(UISlidingBarState *)self _supplementaryEntirelyOverlapsMain];

    return v7;
  }

  return 0;
}

- (BOOL)trailingOverlapsMain
{
  [(UISlidingBarState *)self _trailingOverlayWidth];
  if (v3 > 0.0)
  {
    return 1;
  }

  [(UISlidingBarState *)self trailingWidth];
  if (v4 == 0.0 && [(UISlidingBarState *)self _treatTrailingHiddenAsOverlaps])
  {
    return 1;
  }

  v5 = [(UISlidingBarState *)self _configuration];
  if ([v5 supplementaryEdge] == 1)
  {
    v6 = [(UISlidingBarState *)self supplementaryOverlapsMain];

    if (v6)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)_trailingEntirelyOverlapsMain
{
  if ([(UISlidingBarState *)self trailingOverlapsMain])
  {
    [(UISlidingBarState *)self _trailingOverlayWidth];
    v4 = v3;
    [(UISlidingBarState *)self trailingWidth];
    if (v4 == v5)
    {
      return 1;
    }
  }

  v6 = [(UISlidingBarState *)self _configuration];
  if ([v6 supplementaryEdge] == 1)
  {
    v7 = [(UISlidingBarState *)self _supplementaryEntirelyOverlapsMain];

    if (v7)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (double)_distanceFromRequest:(id)a3
{
  if (!a3)
  {
    return 1.79769313e308;
  }

  v4 = a3;
  [(UISlidingBarState *)self leadingWidth];
  v6 = v5;
  [v4 leadingWidth];
  v8 = v6 - v7;
  [(UISlidingBarState *)self trailingWidth];
  v10 = v9;
  [v4 trailingWidth];
  v12 = v8 + v10 - v11;
  [(UISlidingBarState *)self supplementaryWidth];
  v14 = v13;
  [v4 supplementaryWidth];
  v16 = v15;

  return v12 + v14 - v16;
}

- (double)_absoluteDistanceFromRequest:(id)a3
{
  if (!a3)
  {
    return 1.79769313e308;
  }

  v4 = a3;
  [(UISlidingBarState *)self leadingWidth];
  v6 = v5;
  [v4 leadingWidth];
  v8 = vabdd_f64(v6, v7);
  [(UISlidingBarState *)self trailingWidth];
  v10 = v9;
  [v4 trailingWidth];
  v12 = v8 + vabdd_f64(v10, v11);
  [(UISlidingBarState *)self supplementaryWidth];
  v14 = v13;
  [v4 supplementaryWidth];
  v16 = v15;

  return v12 + vabdd_f64(v14, v16);
}

- (UISlidingBarConfiguration)configuration
{
  v2 = [(UISlidingBarConfiguration *)self->_configuration copy];

  return v2;
}

- (id)stateRequest
{
  v3 = objc_alloc_init(UISlidingBarStateRequest);
  [(UISlidingBarState *)self leadingWidth];
  [(UISlidingBarStateRequest *)v3 setLeadingWidth:?];
  [(UISlidingBarState *)self leadingOffscreenWidth];
  [(UISlidingBarStateRequest *)v3 setLeadingOffscreenWidth:?];
  [(UISlidingBarState *)self trailingWidth];
  [(UISlidingBarStateRequest *)v3 setTrailingWidth:?];
  [(UISlidingBarState *)self trailingOffscreenWidth];
  [(UISlidingBarStateRequest *)v3 setTrailingOffscreenWidth:?];
  [(UISlidingBarState *)self supplementaryWidth];
  [(UISlidingBarStateRequest *)v3 setSupplementaryWidth:?];
  [(UISlidingBarState *)self supplementaryOffscreenWidth];
  [(UISlidingBarStateRequest *)v3 setSupplementaryOffscreenWidth:?];
  [(UISlidingBarState *)self mainWidth];
  [(UISlidingBarStateRequest *)v3 setMainWidth:?];

  return v3;
}

- (id)_interactiveStateRequest
{
  v3 = objc_alloc_init(UISlidingBarStateRequest);
  [(UISlidingBarState *)self _rubberBandInset];
  [(UISlidingBarStateRequest *)v3 setRubberBandInset:?];
  [(UISlidingBarState *)self supplementaryWidth];
  if (v4 <= 0.0)
  {
    [(UISlidingBarState *)self leadingWidth];
    v15 = v14;
    [(UISlidingBarState *)self leadingDragOffset];
    [(UISlidingBarStateRequest *)v3 setLeadingWidth:v15 - v16];
    [(UISlidingBarState *)self trailingWidth];
    v18 = v17;
    [(UISlidingBarState *)self trailingDragOffset];
    [(UISlidingBarStateRequest *)v3 setTrailingWidth:v18 - v19];
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [(UISlidingBarState *)self _configuration];
  v7 = [v6 supplementaryEdge];

  if (!v7)
  {
    [(UISlidingBarState *)self leadingWidth];
    v21 = v20;
    [(UISlidingBarState *)self leadingDragOffset];
    v23 = v22;
    [(UISlidingBarState *)self supplementaryDragOffset];
    v13 = v23 + v24;
    if (v21 > 0.0)
    {
      [(UISlidingBarStateRequest *)v3 setLeadingWidth:v21 - v13];
      goto LABEL_8;
    }

LABEL_9:
    v26 = v5 - v13;
    v25 = v3;
    goto LABEL_10;
  }

  [(UISlidingBarState *)self trailingWidth];
  v9 = v8;
  [(UISlidingBarState *)self trailingDragOffset];
  v11 = v10;
  [(UISlidingBarState *)self supplementaryDragOffset];
  v13 = v11 + v12;
  if (v9 <= 0.0)
  {
    goto LABEL_9;
  }

  [(UISlidingBarStateRequest *)v3 setTrailingWidth:v9 - v13];
LABEL_8:
  v25 = v3;
  v26 = v5;
LABEL_10:
  [(UISlidingBarStateRequest *)v25 setSupplementaryWidth:v26];
LABEL_11:

  return v3;
}

- (BOOL)isLeadingVisible
{
  [(UISlidingBarState *)self leadingWidth];
  v4 = v3;
  [(UISlidingBarState *)self leadingDragOffset];
  return v4 > v5;
}

- (BOOL)isTrailingVisible
{
  [(UISlidingBarState *)self trailingWidth];
  v4 = v3;
  [(UISlidingBarState *)self trailingDragOffset];
  return v4 > v5;
}

- (BOOL)isSupplementaryVisible
{
  v3 = [(UISlidingBarState *)self _configuration];
  v4 = [v3 supplementaryEdge];

  if (v4)
  {
    [(UISlidingBarState *)self trailingWidth];
    v6 = v5;
    [(UISlidingBarState *)self trailingDragOffset];
  }

  else
  {
    [(UISlidingBarState *)self leadingWidth];
    v6 = v8;
    [(UISlidingBarState *)self leadingDragOffset];
  }

  v9 = v7;
  [(UISlidingBarState *)self supplementaryDragOffset];
  v11 = v10;
  [(UISlidingBarState *)self supplementaryWidth];
  if (v12 <= 0.0)
  {
    return 0;
  }

  [(UISlidingBarState *)self supplementaryWidth];
  return v6 + v13 > v9 + v11;
}

@end