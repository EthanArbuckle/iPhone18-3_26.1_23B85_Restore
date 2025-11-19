@interface CRTextField
- (id)_rtiSourceSession;
- (id)inputAccessoryView;
- (void)doneButtonPressed;
@end

@implementation CRTextField

- (id)inputAccessoryView
{
  if ((([(CRTextField *)self keyboardType]- 4) & 0xFFFFFFFFFFFFFFFALL) != 0)
  {
    v3 = 0;
  }

  else
  {
    cachedDoneIAV = self->_cachedDoneIAV;
    if (!cachedDoneIAV)
    {
      v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed"];
      v7 = objc_alloc_init(UIToolbar);
      [(UIView *)v7 setBarStyle:1];
      v11[0] = v5;
      v11[1] = v6;
      v8 = [NSArray arrayWithObjects:v11 count:2];
      [(UIView *)v7 setItems:v8];

      [(UIView *)v7 sizeToFit];
      v9 = self->_cachedDoneIAV;
      self->_cachedDoneIAV = v7;

      cachedDoneIAV = self->_cachedDoneIAV;
    }

    v3 = cachedDoneIAV;
  }

  return v3;
}

- (id)_rtiSourceSession
{
  rtiSourceSession = self->__rtiSourceSession;
  if (rtiSourceSession)
  {
    v4 = rtiSourceSession;
LABEL_10:
    v6 = v4;
    goto LABEL_11;
  }

  if (!self->_rtiClient)
  {
    goto LABEL_7;
  }

  v5 = remote_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100005F5C(v5);
  }

  v6 = [(SFRemoteTextInputClient *)self->_rtiClient sourceSession];
  if (!v6)
  {
LABEL_7:
    v7 = remote_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100005FA0(v7);
    }

    v4 = objc_alloc_init(RTIInputSystemSourceSession);
    goto LABEL_10;
  }

LABEL_11:
  if (v6 != self->__rtiSourceSession)
  {
    v8 = remote_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100005FE4(v6, v8);
    }

    objc_storeStrong(&self->__rtiSourceSession, v6);
  }

  return v6;
}

- (void)doneButtonPressed
{
  v3 = remote_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Done button pressed", v5, 2u);
  }

  doneButtonPressedHandler = self->_doneButtonPressedHandler;
  if (doneButtonPressedHandler)
  {
    doneButtonPressedHandler[2]();
  }
}

@end