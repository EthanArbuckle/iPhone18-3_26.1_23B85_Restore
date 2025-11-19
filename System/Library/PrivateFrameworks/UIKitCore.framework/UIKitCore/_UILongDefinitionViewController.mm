@interface _UILongDefinitionViewController
- (_UILongDefinitionViewController)initWithDefinitionValue:(id)a3;
- (void)viewDidLoad;
@end

@implementation _UILongDefinitionViewController

- (_UILongDefinitionViewController)initWithDefinitionValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UILongDefinitionViewController;
  v6 = [(UIViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_definitionValue, a3);
    v8 = [(_UIDefinitionValue *)v7->_definitionValue term];
    [(UIViewController *)v7 setTitle:v8];
  }

  return v7;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = _UILongDefinitionViewController;
  [(UIViewController *)&v24 viewDidLoad];
  v3 = [(UIViewController *)self view];
  [v3 setAutoresizingMask:18];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v4 = _MergedGlobals_5_6;
  v33 = _MergedGlobals_5_6;
  if (!_MergedGlobals_5_6)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __get_WKUserStyleSheetClass_block_invoke;
    v28 = &unk_1E70F2F20;
    v29 = &v30;
    __get_WKUserStyleSheetClass_block_invoke(&v25);
    v4 = v31[3];
  }

  v5 = v4;
  _Block_object_dispose(&v30, 8);
  v6 = [[v4 alloc] initWithSource:@":root{color-scheme:light dark;} a{pointer-events:none !important;}" forMainFrameOnly:0];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v7 = qword_1ED49A5D8;
  v33 = qword_1ED49A5D8;
  if (!qword_1ED49A5D8)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getWKUserContentControllerClass_block_invoke;
    v28 = &unk_1E70F2F20;
    v29 = &v30;
    __getWKUserContentControllerClass_block_invoke(&v25);
    v7 = v31[3];
  }

  v8 = v7;
  _Block_object_dispose(&v30, 8);
  v9 = objc_alloc_init(v7);
  [v9 _addUserStyleSheet:v6];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v10 = qword_1ED49A5E0;
  v33 = qword_1ED49A5E0;
  if (!qword_1ED49A5E0)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getWKWebViewConfigurationClass_block_invoke;
    v28 = &unk_1E70F2F20;
    v29 = &v30;
    __getWKWebViewConfigurationClass_block_invoke(&v25);
    v10 = v31[3];
  }

  v11 = v10;
  _Block_object_dispose(&v30, 8);
  v12 = objc_alloc_init(v10);
  [v12 setUserContentController:v9];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v13 = qword_1ED49A5E8;
  v33 = qword_1ED49A5E8;
  if (!qword_1ED49A5E8)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __getWKWebViewClass_block_invoke;
    v28 = &unk_1E70F2F20;
    v29 = &v30;
    __getWKWebViewClass_block_invoke(&v25);
    v13 = v31[3];
  }

  v14 = v13;
  _Block_object_dispose(&v30, 8);
  v15 = [v13 alloc];
  [v3 bounds];
  v16 = [v15 initWithFrame:v12 configuration:?];
  [v16 setOpaque:0];
  v17 = +[UIColor systemBackgroundColor];
  [v16 setBackgroundColor:v17];

  [v16 setAllowsLinkPreview:0];
  [v16 setAutoresizingMask:18];
  v18 = MEMORY[0x1E696AD60];
  v19 = [(_UIDefinitionValue *)self->_definitionValue longDefinition];
  v20 = [v18 stringWithString:v19];

  v21 = [v20 rangeOfString:@"</head>"];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v20 replaceCharactersInRange:v21 withString:{v22, @"<meta name='viewport' content='width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0'></head>"}];
  }

  v23 = [v16 loadHTMLString:v20 baseURL:0];
  [v3 addSubview:v16];
}

@end