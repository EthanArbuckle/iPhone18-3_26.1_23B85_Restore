@interface _VFXSnapshotWindow
- (CGPoint)_warpPoint:(CGPoint)point outOfBounds:(BOOL *)bounds;
- (CGPoint)warpPoint:(CGPoint)point;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)vfxView;
- (void)dealloc;
@end

@implementation _VFXSnapshotWindow

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _VFXSnapshotWindow;
  [(_VFXSnapshotWindow *)&v2 dealloc];
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  if (objc_msgSend_vfxView(self, a2, event, window))
  {
    v12 = objc_msgSend_layer(self, v9, v10, v11);
    objc_msgSend_convertPoint_toLayer_(v12, v13, 0, v14, x, y);
    v37 = 0;
    objc_msgSend__warpPoint_outOfBounds_(self, v15, &v37, v16);
    result = 0;
    if ((v37 & 1) == 0)
    {
      v36.receiver = self;
      v36.super_class = _VFXSnapshotWindow;
      for (i = [(_VFXSnapshotWindow *)&v36 hitTest:event withEvent:?]; i; i = objc_msgSend_superview(i, v32, v33, v34))
      {
        v22 = objc_msgSend_gestureRecognizers(i, v18, v19, v20);
        if (objc_msgSend_count(v22, v23, v24, v25))
        {
          break;
        }

        if (objc_msgSend_isMultipleTouchEnabled(i, v26, v27, v28))
        {
          break;
        }

        if (objc_msgSend_canBecomeFirstResponder(i, v29, v30, v31))
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      if (i == self)
      {
        return 0;
      }

      else
      {
        return i;
      }
    }
  }

  else
  {
    v35.receiver = self;
    v35.super_class = _VFXSnapshotWindow;
    return [(_VFXSnapshotWindow *)&v35 hitTest:event withEvent:x, y];
  }

  return result;
}

- (CGPoint)_warpPoint:(CGPoint)point outOfBounds:(BOOL *)bounds
{
  y = point.y;
  x = point.x;
  v9 = objc_msgSend_vfxView(self, a2, bounds, v4);
  if (v9)
  {
    v12 = v9;
    objc_msgSend_convertPoint_fromView_(v9, v10, 0, v11, x, y);
    v15 = objc_msgSend_hitTest_options_(v12, v13, 0, v14);
    if (objc_msgSend_count(v15, v16, v17, v18) && ((v21 = objc_msgSend_objectAtIndexedSubscript_(v15, v19, 0, v20), v25 = objc_msgSend_node(v21, v22, v23, v24), v29 = objc_msgSend_model(v25, v26, v27, v28), v33 = objc_msgSend_materials(v29, v30, v31, v32), !objc_msgSend_count(v33, v34, v35, v36)) ? (v55 = 0) : (v40 = objc_msgSend_materials(v29, v37, v38, v39), v44 = objc_msgSend_meshElementIndex(v21, v41, v42, v43), v48 = objc_msgSend_materials(v29, v45, v46, v47), v52 = objc_msgSend_count(v48, v49, v50, v51), v55 = objc_msgSend_objectAtIndexedSubscript_(v40, v53, v44 % v52, v54)), (v56 = objc_msgSend_subviews(self, v37, v38, v39), objc_msgSend_count(v56, v57, v58, v59)) && (v63 = objc_msgSend_diffuse(v55, v60, v61, v62), v67 = objc_msgSend_contents(v63, v64, v65, v66), v71 = objc_msgSend_subviews(self, v68, v69, v70), v67 == objc_msgSend_objectAtIndexedSubscript_(v71, v72, 0, v73))))
    {
      objc_msgSend_textureCoordinatesWithMappingChannel_(v21, v74, 0, v75);
      v77 = v76;
      v79 = v78;
      v83 = objc_msgSend_diffuse(v55, v80, v81, v82);
      objc_msgSend_contentsTransform(v83, v84, v85, v86);
      v104 = v87;
      v105 = v88;
      v106 = v90;
      v107 = v89;
      if (!VFXMatrix4IsIdentity(v87, v88, v89, v90))
      {
        v94 = v77;
        v95 = v79;
        v96 = vaddq_f32(v106, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v104, v94), v105, v95), 0, v107)).u64[0];
        v77 = *&v96;
        v79 = *(&v96 + 1);
      }

      objc_msgSend_bounds(self, v91, v92, v93, *&v104, *&v105, *&v106, *&v107);
      x = v77 * v97;
      objc_msgSend_bounds(self, v98, v99, v100);
      y = v79 * v101;
    }

    else if (bounds)
    {
      *bounds = 1;
    }
  }

  v102 = x;
  v103 = y;
  result.y = v103;
  result.x = v102;
  return result;
}

- (CGPoint)warpPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v8 = objc_msgSend_layer(self, a2, v3, v4);
  objc_msgSend_convertPoint_toLayer_(v8, v9, 0, v10, x, y);

  objc_msgSend__warpPoint_outOfBounds_(self, v11, 0, v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)vfxView
{
  WeakRetained = objc_loadWeakRetained(&qword_1EB644860);

  return WeakRetained;
}

@end