@interface _UISearchTokenAttachment
- (_UISearchTokenAttachment)init;
- (_UISearchTokenAttachment)initWithCoder:(id)a3;
- (_UISearchTokenAttachment)initWithData:(id)a3 ofType:(id)a4;
- (_UISearchTokenAttachment)initWithToken:(id)a3;
- (id)viewProviderForParentView:(id)a3 characterIndex:(unint64_t)a4 layoutManager:(id)a5;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
- (void)detachView:(id)a3 fromParentView:(id)a4;
- (void)placeView:(id)a3 withFrame:(CGRect)a4 inParentView:(id)a5 characterIndex:(unint64_t)a6 layoutManager:(id)a7;
@end

@implementation _UISearchTokenAttachment

- (_UISearchTokenAttachment)initWithData:(id)a3 ofType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"must call -initWithToken:" userInfo:0];
  objc_exception_throw(v7);
}

- (_UISearchTokenAttachment)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"must call -initWithToken:" userInfo:0];
  objc_exception_throw(v2);
}

- (_UISearchTokenAttachment)initWithCoder:(id)a3
{
  v4 = [UISearchToken tokenWithIcon:0 text:&stru_1EFB14550];
  v5 = [(_UISearchTokenAttachment *)self initWithToken:v4];

  return v5;
}

- (_UISearchTokenAttachment)initWithToken:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UISearchTokenAttachment;
  v6 = [(_UISearchTokenAttachment *)&v10 initWithData:0 ofType:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, a3);
    v8 = v7;
  }

  return v7;
}

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  viewProvider = self->_viewProvider;
  if (!viewProvider || (-[NSTextAttachmentViewProvider location](viewProvider, "location"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isEqual:v9], v12, (v13 & 1) == 0))
  {
    v14 = [_UISearchTokenAttachmentViewProvider alloc];
    v15 = [v10 textLayoutManager];
    v16 = [(_UISearchTokenAttachmentViewProvider *)v14 initWithTextAttachment:self parentView:v8 textLayoutManager:v15 location:v9];
    v17 = self->_viewProvider;
    self->_viewProvider = v16;

    [(NSTextAttachmentViewProvider *)self->_viewProvider setTracksTextAttachmentViewBounds:1];
  }

  v18 = [v10 textLayoutManager];
  [v18 setViewProvider:self->_viewProvider forTextAttachment:self location:v9];
  v19 = self->_viewProvider;
  v20 = v19;

  return v19;
}

- (id)viewProviderForParentView:(id)a3 characterIndex:(unint64_t)a4 layoutManager:(id)a5
{
  viewProvider = self->_viewProvider;
  if (!viewProvider)
  {
    v9 = a5;
    v10 = a3;
    v11 = [(NSTextAttachmentViewProvider *)[_UISearchTokenAttachmentViewProvider alloc] initWithTextAttachment:self parentView:v10 characterIndex:a4 layoutManager:v9];

    v12 = self->_viewProvider;
    self->_viewProvider = v11;

    [(NSTextAttachmentViewProvider *)self->_viewProvider setTracksTextAttachmentViewBounds:1];
    viewProvider = self->_viewProvider;
  }

  return viewProvider;
}

- (void)placeView:(id)a3 withFrame:(CGRect)a4 inParentView:(id)a5 characterIndex:(unint64_t)a6 layoutManager:(id)a7
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
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
        v17 = v9;
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
      v17 = v9;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Asked to place a token view somewhere we didn't expect (%@)!", &v16, 0xCu);
    }
  }

  v12 = [v9 textField];
  v13 = v12;
  if (v12)
  {
    [v12 _willAddTokenLayoutView:v8];
  }
}

- (void)detachView:(id)a3 fromParentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _UISearchTokenAttachment;
  [(_UISearchTokenAttachment *)&v12 detachView:v6 fromParentView:v7];
  v8 = v7;
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

      v11 = [v10 superview];

      v10 = v11;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    [v10 _didRemoveTokenLayoutView:v6];
  }

LABEL_7:
}

@end