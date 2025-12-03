@interface _UISearchTokenAttachment
- (_UISearchTokenAttachment)init;
- (_UISearchTokenAttachment)initWithCoder:(id)coder;
- (_UISearchTokenAttachment)initWithData:(id)data ofType:(id)type;
- (_UISearchTokenAttachment)initWithToken:(id)token;
- (id)viewProviderForParentView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
- (void)detachView:(id)view fromParentView:(id)parentView;
- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView characterIndex:(unint64_t)index layoutManager:(id)manager;
@end

@implementation _UISearchTokenAttachment

- (_UISearchTokenAttachment)initWithData:(id)data ofType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"must call -initWithToken:" userInfo:0];
  objc_exception_throw(v7);
}

- (_UISearchTokenAttachment)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"must call -initWithToken:" userInfo:0];
  objc_exception_throw(v2);
}

- (_UISearchTokenAttachment)initWithCoder:(id)coder
{
  v4 = [UISearchToken tokenWithIcon:0 text:&stru_1EFB14550];
  v5 = [(_UISearchTokenAttachment *)self initWithToken:v4];

  return v5;
}

- (_UISearchTokenAttachment)initWithToken:(id)token
{
  tokenCopy = token;
  v10.receiver = self;
  v10.super_class = _UISearchTokenAttachment;
  v6 = [(_UISearchTokenAttachment *)&v10 initWithData:0 ofType:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, token);
    v8 = v7;
  }

  return v7;
}

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewCopy = view;
  locationCopy = location;
  containerCopy = container;
  viewProvider = self->_viewProvider;
  if (!viewProvider || (-[NSTextAttachmentViewProvider location](viewProvider, "location"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isEqual:locationCopy], v12, (v13 & 1) == 0))
  {
    v14 = [_UISearchTokenAttachmentViewProvider alloc];
    textLayoutManager = [containerCopy textLayoutManager];
    v16 = [(_UISearchTokenAttachmentViewProvider *)v14 initWithTextAttachment:self parentView:viewCopy textLayoutManager:textLayoutManager location:locationCopy];
    v17 = self->_viewProvider;
    self->_viewProvider = v16;

    [(NSTextAttachmentViewProvider *)self->_viewProvider setTracksTextAttachmentViewBounds:1];
  }

  textLayoutManager2 = [containerCopy textLayoutManager];
  [textLayoutManager2 setViewProvider:self->_viewProvider forTextAttachment:self location:locationCopy];
  v19 = self->_viewProvider;
  v20 = v19;

  return v19;
}

- (id)viewProviderForParentView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager
{
  viewProvider = self->_viewProvider;
  if (!viewProvider)
  {
    managerCopy = manager;
    viewCopy = view;
    v11 = [(NSTextAttachmentViewProvider *)[_UISearchTokenAttachmentViewProvider alloc] initWithTextAttachment:self parentView:viewCopy characterIndex:index layoutManager:managerCopy];

    v12 = self->_viewProvider;
    self->_viewProvider = v11;

    [(NSTextAttachmentViewProvider *)self->_viewProvider setTracksTextAttachmentViewBounds:1];
    viewProvider = self->_viewProvider;
  }

  return viewProvider;
}

- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView characterIndex:(unint64_t)index layoutManager:(id)manager
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  parentViewCopy = parentView;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (has_internal_diagnostics)
  {
    if ((isKindOfClass & 1) == 0)
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412290;
        v17 = parentViewCopy;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Asked to place a token view somewhere we didn't expect (%@)!", &v16, 0xCu);
      }
    }
  }

  else if ((isKindOfClass & 1) == 0)
  {
    v15 = *(__UILogGetCategoryCachedImpl("Assert", &placeView_withFrame_inParentView_characterIndex_layoutManager____s_category) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = parentViewCopy;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Asked to place a token view somewhere we didn't expect (%@)!", &v16, 0xCu);
    }
  }

  textField = [parentViewCopy textField];
  v13 = textField;
  if (textField)
  {
    [textField _willAddTokenLayoutView:viewCopy];
  }
}

- (void)detachView:(id)view fromParentView:(id)parentView
{
  viewCopy = view;
  parentViewCopy = parentView;
  v12.receiver = self;
  v12.super_class = _UISearchTokenAttachment;
  [(_UISearchTokenAttachment *)&v12 detachView:viewCopy fromParentView:parentViewCopy];
  v8 = parentViewCopy;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v10 superview];

      v10 = superview;
      if (!superview)
      {
        goto LABEL_7;
      }
    }

    [v10 _didRemoveTokenLayoutView:viewCopy];
  }

LABEL_7:
}

@end