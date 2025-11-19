@interface UIAlertControllerDescriptor
- (BOOL)isEqual:(id)a3;
- (UIEdgeInsets)containerViewSafeAreaInsets;
@end

@implementation UIAlertControllerDescriptor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v13) = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [(UIAlertControllerDescriptor *)self hasHeaderContentViewController];
  if (v6 != [v5 hasHeaderContentViewController])
  {
    goto LABEL_9;
  }

  v7 = [(UIAlertControllerDescriptor *)self hasTitle];
  if (v7 != [v5 hasTitle])
  {
    goto LABEL_9;
  }

  v8 = [(UIAlertControllerDescriptor *)self hasMessage];
  if (v8 != [v5 hasMessage])
  {
    goto LABEL_9;
  }

  v9 = [(UIAlertControllerDescriptor *)self hasContentViewController];
  if (v9 != [v5 hasContentViewController])
  {
    goto LABEL_9;
  }

  v10 = [(UIAlertControllerDescriptor *)self numberOfActions];
  if (v10 != [v5 numberOfActions])
  {
    goto LABEL_9;
  }

  v11 = [(UIAlertControllerDescriptor *)self numberOfVisibleActions];
  if (v11 != [v5 numberOfVisibleActions])
  {
    goto LABEL_9;
  }

  v12 = [(UIAlertControllerDescriptor *)self applicationIsFullscreen];
  if (v12 != [v5 applicationIsFullscreen])
  {
    goto LABEL_9;
  }

  [(UIAlertControllerDescriptor *)self containerViewSafeAreaInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v5 containerViewSafeAreaInsets];
  LOBYTE(v13) = 0;
  if (v18 != v26 || v16 != v23 || v22 != v25 || v20 != v24)
  {
    goto LABEL_10;
  }

  v27 = [(UIAlertControllerDescriptor *)self isPad];
  if (v27 == [v5 isPad] && (v28 = -[UIAlertControllerDescriptor isSystemAlert](self, "isSystemAlert"), v28 == objc_msgSend(v5, "isSystemAlert")))
  {
    v29 = [(UIAlertControllerDescriptor *)self hasTextfields];
    v13 = v29 ^ [v5 hasTextfields] ^ 1;
  }

  else
  {
LABEL_9:
    LOBYTE(v13) = 0;
  }

LABEL_10:

LABEL_12:
  return v13;
}

- (UIEdgeInsets)containerViewSafeAreaInsets
{
  objc_copyStruct(v6, &self->_containerViewSafeAreaInsets, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end