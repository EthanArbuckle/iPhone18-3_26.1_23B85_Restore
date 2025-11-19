@interface SWLayoutGuide
- (BOOL)isEqual:(id)a3;
- (CGRect)bounds;
- (CGRect)contentFrame;
- (CGRect)contentSafeAreaFrame;
- (CGRect)systemSafeAreaFrame;
- (double)initWithBounds:(double)a3 contentFrame:(double)a4 contentSafeAreaFrame:(double)a5 systemSafeAreaFrame:(double)a6;
- (id)description;
@end

@implementation SWLayoutGuide

- (double)initWithBounds:(double)a3 contentFrame:(double)a4 contentSafeAreaFrame:(double)a5 systemSafeAreaFrame:(double)a6
{
  v33.receiver = a1;
  v33.super_class = SWLayoutGuide;
  result = objc_msgSendSuper2(&v33, sel_init);
  if (result)
  {
    result[1] = a2;
    result[2] = a3;
    result[3] = a4;
    result[4] = a5;
    result[5] = a6;
    result[6] = a7;
    result[7] = a8;
    result[8] = a9;
    *(result + 9) = a17;
    *(result + 10) = a18;
    *(result + 11) = a19;
    *(result + 12) = a20;
    *(result + 13) = a21;
    *(result + 14) = a22;
    *(result + 15) = a23;
    *(result + 16) = a24;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(SWLayoutGuide *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 bounds];
    v60.origin.x = v14;
    v60.origin.y = v15;
    v60.size.width = v16;
    v60.size.height = v17;
    v56.origin.x = v7;
    v56.origin.y = v9;
    v56.size.width = v11;
    v56.size.height = v13;
    if (!CGRectEqualToRect(v56, v60))
    {
      goto LABEL_7;
    }

    [(SWLayoutGuide *)self contentFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [v5 contentFrame];
    v61.origin.x = v26;
    v61.origin.y = v27;
    v61.size.width = v28;
    v61.size.height = v29;
    v57.origin.x = v19;
    v57.origin.y = v21;
    v57.size.width = v23;
    v57.size.height = v25;
    if (!CGRectEqualToRect(v57, v61))
    {
      goto LABEL_7;
    }

    [(SWLayoutGuide *)self contentSafeAreaFrame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    [v5 contentSafeAreaFrame];
    v62.origin.x = v38;
    v62.origin.y = v39;
    v62.size.width = v40;
    v62.size.height = v41;
    v58.origin.x = v31;
    v58.origin.y = v33;
    v58.size.width = v35;
    v58.size.height = v37;
    if (CGRectEqualToRect(v58, v62))
    {
      [(SWLayoutGuide *)self systemSafeAreaFrame];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      [v5 systemSafeAreaFrame];
      v63.origin.x = v50;
      v63.origin.y = v51;
      v63.size.width = v52;
      v63.size.height = v53;
      v59.origin.x = v43;
      v59.origin.y = v45;
      v59.size.width = v47;
      v59.size.height = v49;
      v54 = CGRectEqualToRect(v59, v63);
    }

    else
    {
LABEL_7:
      v54 = 0;
    }
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [(SWLayoutGuide *)self bounds];
  v4 = NSStringFromCGRect(v10);
  [v3 appendFormat:@"; bounds: %@", v4];

  [(SWLayoutGuide *)self contentFrame];
  v5 = NSStringFromCGRect(v11);
  [v3 appendFormat:@"; contentFrame: %@", v5];

  [(SWLayoutGuide *)self contentSafeAreaFrame];
  v6 = NSStringFromCGRect(v12);
  [v3 appendFormat:@"; contentSafeAreaFrame: %@", v6];

  [(SWLayoutGuide *)self systemSafeAreaFrame];
  v7 = NSStringFromCGRect(v13);
  [v3 appendFormat:@"; systemSafeAreaFrame: %@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentSafeAreaFrame
{
  x = self->_contentSafeAreaFrame.origin.x;
  y = self->_contentSafeAreaFrame.origin.y;
  width = self->_contentSafeAreaFrame.size.width;
  height = self->_contentSafeAreaFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)systemSafeAreaFrame
{
  x = self->_systemSafeAreaFrame.origin.x;
  y = self->_systemSafeAreaFrame.origin.y;
  width = self->_systemSafeAreaFrame.size.width;
  height = self->_systemSafeAreaFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end