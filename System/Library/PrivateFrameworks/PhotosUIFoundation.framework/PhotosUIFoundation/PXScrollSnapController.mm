@interface PXScrollSnapController
- (CGPoint)adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:(CGPoint)origin scrollingVelocity:(CGPoint)velocity decelerationRate:(int64_t *)rate;
- (CGRect)visibleRect;
- (PXScrollSnapController)init;
- (PXScrollSnapController)initWithSnapBehavior:(int64_t)behavior scrollAxis:(int64_t)axis visibleRect:(CGRect)rect visibilityInsets:(UIEdgeInsets)insets scrollablePageSource:(id)source;
- (PXScrollablePageSource)scrollablePageSource;
- (UIEdgeInsets)visibilityInsets;
@end

@implementation PXScrollSnapController

- (PXScrollablePageSource)scrollablePageSource
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollablePageSource);

  return WeakRetained;
}

- (UIEdgeInsets)visibilityInsets
{
  top = self->_visibilityInsets.top;
  left = self->_visibilityInsets.left;
  bottom = self->_visibilityInsets.bottom;
  right = self->_visibilityInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:(CGPoint)origin scrollingVelocity:(CGPoint)velocity decelerationRate:(int64_t *)rate
{
  y = velocity.y;
  x = velocity.x;
  v8 = origin.y;
  v43 = origin.x;
  v66 = *MEMORY[0x1E69E9840];
  snapBehavior = [(PXScrollSnapController *)self snapBehavior];
  scrollAxis = [(PXScrollSnapController *)self scrollAxis];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = snapBehavior;
    _os_log_debug_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ScrollSnap] === adjust %f with behavior %ti", buf, 0x16u);
    if (!snapBehavior)
    {
      goto LABEL_17;
    }
  }

  else if (!snapBehavior)
  {
    goto LABEL_17;
  }

  v13 = PXPointValueForAxis(scrollAxis, x, y);
  [(PXScrollSnapController *)self minimumSpeed];
  if (fabs(v13) >= v14)
  {
    if (scrollAxis != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollSnapController.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"scrollAxis == PXAxisVertical"}];
    }

    [(PXScrollSnapController *)self visibleRect];
    rect = v15;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(PXScrollSnapController *)self visibilityInsets];
    v40 = v23;
    v41 = v22;
    v25 = v24;
    v27 = v26;
    [(PXScrollSnapController *)self maximumAccelerationFactor];
    v39 = v28;
    [(PXScrollSnapController *)self maximumDecelerationFactor];
    v38 = v29;
    v68.origin.x = v17;
    v68.origin.y = v19;
    v68.size.width = v21;
    v68.size.height = rect;
    MinY = CGRectGetMinY(v68);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = MinY;
      _os_log_debug_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ScrollSnap] current %f", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v65 = 0x7FEFFFFFFFFFFFFFLL;
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2020000000;
    v63[3] = 0x7FEFFFFFFFFFFFFFLL;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = v8;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v54 = 0;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v52 = 0;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v50 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v48 = 0;
    scrollablePageSource = [(PXScrollSnapController *)self scrollablePageSource];
    v32 = scrollablePageSource;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __119__PXScrollSnapController_adjustedTargetVisibleOriginForProposedTargetVisibleOrigin_scrollingVelocity_decelerationRate___block_invoke;
    v44[3] = &unk_1E7BB88D0;
    *&v44[13] = v17 + v27;
    *&v44[14] = v19 + v25;
    *&v44[15] = v21 - (v27 + v40);
    *&v44[16] = rect - (v25 + v41);
    v33 = 1.79769313e308;
    v44[6] = v51;
    v44[7] = v49;
    if (y < 0.0)
    {
      v33 = MinY;
    }

    v45 = y < 0.0;
    v34 = -1.79769313e308;
    if (y > 0.0)
    {
      v34 = MinY;
    }

    v44[17] = snapBehavior;
    *&v44[18] = v34;
    *&v44[19] = v33;
    v44[20] = v39;
    v44[21] = v38;
    v44[22] = snapBehavior == 3;
    *&v44[23] = v8;
    *&v44[24] = MinY;
    v44[8] = v53;
    v44[9] = buf;
    v44[10] = v63;
    v44[11] = &v59;
    v44[12] = &v55;
    v44[25] = a2;
    v44[4] = self;
    v44[5] = v47;
    *&v44[26] = v25;
    *&v44[27] = v27;
    *&v44[28] = v41;
    *&v44[29] = v40;
    v46 = y > 0.0;
    [scrollablePageSource enumerateScrollablePagesWithOptions:2 * (y < 0.0) usingBlock:v44];

    if (snapBehavior == 3)
    {
      snapBehavior = *(v56 + 24);
    }

    else
    {
      snapBehavior = 0;
    }

    v8 = v60[3];
    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);
    _Block_object_dispose(v51, 8);
    _Block_object_dispose(v53, 8);
    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(v63, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    snapBehavior = 0;
  }

LABEL_17:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_debug_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ScrollSnap] ===> adjusted %f", buf, 0xCu);
    if (!rate)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (rate)
  {
LABEL_19:
    *rate = snapBehavior;
  }

LABEL_20:
  v35 = v43;
  v36 = v8;
  result.y = v36;
  result.x = v35;
  return result;
}

void __119__PXScrollSnapController_adjustedTargetVisibleOriginForProposedTargetVisibleOrigin_scrollingVelocity_decelerationRate___block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v45 = *MEMORY[0x1E69E9840];
  MinY = CGRectGetMinY(*&a5);
  v46.origin.x = a5;
  v46.origin.y = a6;
  v46.size.width = a7;
  v46.size.height = a8;
  MaxY = CGRectGetMaxY(v46);
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
  v51 = CGRectInset(*(a1 + 104), 1.0, 1.0);
  v47.origin.x = a5;
  v47.origin.y = a6;
  v47.size.width = a7;
  v47.size.height = a8;
  *(*(*(a1 + 48) + 8) + 24) = CGRectIntersectsRect(v47, v51);
  v52 = CGRectInset(*(a1 + 104), 1.0, 1.0);
  v48.origin.x = a5;
  v48.origin.y = a6;
  v48.size.width = a7;
  v48.size.height = a8;
  *(*(*(a1 + 56) + 8) + 24) = CGRectIntersectsRect(v48, v52);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v27 = *(*(*(a1 + 48) + 8) + 24);
    v28 = *(*(*(a1 + 56) + 8) + 24);
    v29 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 134218752;
    v38 = a2;
    v39 = 1024;
    v40 = v27;
    v41 = 1024;
    v42 = v28;
    v43 = 1024;
    v44 = v29;
    _os_log_debug_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ScrollSnap] %ti isPageInFocus %i isPageAtLeastPartiallyVisible %i lastPageWasInFocus %i", buf, 0x1Eu);
  }

  if ((*(a1 + 240) & 1) != 0 || *(a1 + 136) != 2)
  {
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  else if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 && (a3 & 1) == 0)
  {
    goto LABEL_23;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __119__PXScrollSnapController_adjustedTargetVisibleOriginForProposedTargetVisibleOrigin_scrollingVelocity_decelerationRate___block_invoke_10;
  aBlock[3] = &unk_1E7BB88A8;
  v18 = *(a1 + 160);
  v33 = *(a1 + 144);
  v34 = v18;
  v35 = *(a1 + 176);
  v19 = *(a1 + 56);
  aBlock[4] = *(a1 + 40);
  aBlock[5] = v19;
  v36 = *(a1 + 184);
  v20 = *(a1 + 88);
  v31 = *(a1 + 72);
  v32 = v20;
  v21 = _Block_copy(aBlock);
  v23 = *(a1 + 136);
  if (v23 <= 1)
  {
    if (v23 != 1)
    {
      if (!v23)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:*(a1 + 200) object:*(a1 + 32) file:@"PXScrollSnapController.m" lineNumber:175 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      goto LABEL_22;
    }

    v50.origin.x = a5;
    v50.origin.y = a6;
    v50.size.width = a7;
    v50.size.height = a8;
    MidY = CGRectGetMidY(v50);
    v22.n128_f64[0] = MidY - CGRectGetMidY(*(a1 + 104)) + *(a1 + 192);
  }

  else
  {
    if (v23 != 2)
    {
      if (v23 == 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v38 = a2;
          _os_log_debug_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ScrollSnap] %ti page top?", buf, 0xCu);
        }

        v21[2](v21, MinY - *(a1 + 208));
        v49.origin.x = a5;
        v49.origin.y = a6;
        v49.size.width = a7;
        v49.size.height = a8;
        Height = CGRectGetHeight(v49);
        if (Height > CGRectGetHeight(*(a1 + 104)))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v38 = a2;
            _os_log_debug_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ScrollSnap] %ti page bottom?", buf, 0xCu);
          }

          v21[2](v21, MaxY - *(a1 + 128) - *(a1 + 208));
        }
      }

      goto LABEL_22;
    }

    v22.n128_f64[0] = MinY - *(a1 + 208);
  }

  (v21[2])(v21, v22);
LABEL_22:

LABEL_23:
  *(*(*(a1 + 64) + 8) + 24) = a3;
  if (*(a1 + 240) == 1 && MaxY < CGRectGetMinY(*(a1 + 104)) || *(a1 + 241) == 1 && MinY > CGRectGetMaxY(*(a1 + 104)))
  {
    *a4 = 1;
  }
}

void __119__PXScrollSnapController_adjustedTargetVisibleOriginForProposedTargetVisibleOrigin_scrollingVelocity_decelerationRate___block_invoke_10(uint64_t a1, double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = a2;
    _os_log_debug_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ScrollSnap] candidate %f", &v18, 0xCu);
  }

  if (*(a1 + 80) > a2 || *(a1 + 88) < a2)
  {
    return;
  }

  v5 = *(a1 + 96);
  v4 = *(a1 + 104);
  v6 = *(a1 + 112);
  if (v6 == 1)
  {
    if (*(*(*(a1 + 32) + 8) + 24) != 1 || *(*(*(a1 + 40) + 8) + 24) != 1)
    {
      v7 = *(a1 + 128);
      v11 = vabdd_f64(a2, v7);
      if (v11 >= *(*(*(a1 + 56) + 8) + 24))
      {
        goto LABEL_30;
      }

      v8 = *(a1 + 120);
      v9 = vabdd_f64(a2, v8);
      v10 = a2 - v7;
      goto LABEL_15;
    }

    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    v9 = vabdd_f64(a2, v8);
    v10 = a2 - v7;
    v11 = vabdd_f64(a2, v7);
    v5 = 1.79769313e308;
  }

  else
  {
    if (v6)
    {
      goto LABEL_30;
    }

    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    v9 = vabdd_f64(a2, v8);
    v10 = a2 - v7;
    v11 = vabdd_f64(a2, v7);
  }

  if (v9 >= *(*(*(a1 + 48) + 8) + 24))
  {
LABEL_30:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "[ScrollSnap] not closer";
      goto LABEL_32;
    }

    return;
  }

  if (v8 == v7)
  {
    goto LABEL_33;
  }

LABEL_15:
  v12 = v10 / (v8 - v7);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = v12;
    _os_log_debug_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ScrollSnap] factor %f", &v18, 0xCu);
  }

  v13 = v12 < 1.0 || v12 > v5;
  if (v13 && (v12 < 1.0 ? (v14 = v12 < 1.0 / v4) : (v14 = 1), v14))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "[ScrollSnap] not acceptable";
LABEL_32:
      v17 = 2;
LABEL_36:
      _os_log_debug_impl(&dword_1B3F73000, v15, OS_LOG_TYPE_DEBUG, v16, &v18, v17);
    }
  }

  else
  {
LABEL_33:
    *(*(*(a1 + 48) + 8) + 24) = v9;
    *(*(*(a1 + 56) + 8) + 24) = v11;
    *(*(*(a1 + 64) + 8) + 24) = a2;
    *(*(*(a1 + 72) + 8) + 24) = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v18 = 134217984;
      v19 = a2;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "[ScrollSnap] accepted %f";
      v17 = 12;
      goto LABEL_36;
    }
  }
}

- (PXScrollSnapController)initWithSnapBehavior:(int64_t)behavior scrollAxis:(int64_t)axis visibleRect:(CGRect)rect visibilityInsets:(UIEdgeInsets)insets scrollablePageSource:(id)source
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sourceCopy = source;
  v22.receiver = self;
  v22.super_class = PXScrollSnapController;
  v19 = [(PXScrollSnapController *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_snapBehavior = behavior;
    v19->_scrollAxis = axis;
    v19->_visibleRect.origin.x = x;
    v19->_visibleRect.origin.y = y;
    v19->_visibleRect.size.width = width;
    v19->_visibleRect.size.height = height;
    v19->_visibilityInsets.top = top;
    v19->_visibilityInsets.left = left;
    v19->_visibilityInsets.bottom = bottom;
    v19->_visibilityInsets.right = right;
    objc_storeWeak(&v19->_scrollablePageSource, sourceCopy);
    *&v20->_maximumAccelerationFactor = xmmword_1B4074F30;
    v20->_minimumSpeed = 0.1;
  }

  return v20;
}

- (PXScrollSnapController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXScrollSnapController.m" lineNumber:26 description:@"Code which should be unreachable has been reached"];

  abort();
}

@end