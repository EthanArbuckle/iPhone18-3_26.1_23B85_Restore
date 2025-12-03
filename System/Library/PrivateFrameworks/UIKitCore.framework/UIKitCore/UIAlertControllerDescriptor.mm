@interface UIAlertControllerDescriptor
- (BOOL)isEqual:(id)equal;
- (UIEdgeInsets)containerViewSafeAreaInsets;
@end

@implementation UIAlertControllerDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v13) = 0;
    goto LABEL_12;
  }

  v5 = equalCopy;
  hasHeaderContentViewController = [(UIAlertControllerDescriptor *)self hasHeaderContentViewController];
  if (hasHeaderContentViewController != [v5 hasHeaderContentViewController])
  {
    goto LABEL_9;
  }

  hasTitle = [(UIAlertControllerDescriptor *)self hasTitle];
  if (hasTitle != [v5 hasTitle])
  {
    goto LABEL_9;
  }

  hasMessage = [(UIAlertControllerDescriptor *)self hasMessage];
  if (hasMessage != [v5 hasMessage])
  {
    goto LABEL_9;
  }

  hasContentViewController = [(UIAlertControllerDescriptor *)self hasContentViewController];
  if (hasContentViewController != [v5 hasContentViewController])
  {
    goto LABEL_9;
  }

  numberOfActions = [(UIAlertControllerDescriptor *)self numberOfActions];
  if (numberOfActions != [v5 numberOfActions])
  {
    goto LABEL_9;
  }

  numberOfVisibleActions = [(UIAlertControllerDescriptor *)self numberOfVisibleActions];
  if (numberOfVisibleActions != [v5 numberOfVisibleActions])
  {
    goto LABEL_9;
  }

  applicationIsFullscreen = [(UIAlertControllerDescriptor *)self applicationIsFullscreen];
  if (applicationIsFullscreen != [v5 applicationIsFullscreen])
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

  isPad = [(UIAlertControllerDescriptor *)self isPad];
  if (isPad == [v5 isPad] && (v28 = -[UIAlertControllerDescriptor isSystemAlert](self, "isSystemAlert"), v28 == objc_msgSend(v5, "isSystemAlert")))
  {
    hasTextfields = [(UIAlertControllerDescriptor *)self hasTextfields];
    v13 = hasTextfields ^ [v5 hasTextfields] ^ 1;
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