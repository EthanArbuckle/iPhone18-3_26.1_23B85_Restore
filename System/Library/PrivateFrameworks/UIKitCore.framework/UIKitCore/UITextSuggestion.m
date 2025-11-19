@interface UITextSuggestion
+ (id)decodeTextSuggestions:(id)a3;
+ (id)textSuggestionWithInputText:(id)a3;
+ (id)textSuggestionWithInputText:(id)a3 searchText:(id)a4;
+ (id)textSuggestionWithInputText:(id)a3 searchText:(id)a4 customInfoType:(unint64_t)a5;
- (TIKeyboardCandidate)_keyboardCandidate;
- (UITextSuggestion)init;
- (UITextSuggestion)initWithCoder:(id)a3;
- (UITextSuggestion)initWithInputText:(id)a3 searchText:(id)a4 displayText:(id)a5 headerText:(id)a6 customInfoType:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UITextSuggestion

- (UITextSuggestion)init
{
  v6.receiver = self;
  v6.super_class = UITextSuggestion;
  v2 = [(UITextSuggestion *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (UITextSuggestion)initWithInputText:(id)a3 searchText:(id)a4 displayText:(id)a5 headerText:(id)a6 customInfoType:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v28.receiver = self;
  v28.super_class = UITextSuggestion;
  v16 = [(UITextSuggestion *)&v28 init];
  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v19 = [v12 copy];
    inputText = v16->_inputText;
    v16->_inputText = v19;

    v21 = [v13 copy];
    searchText = v16->_searchText;
    v16->_searchText = v21;

    v23 = [v14 copy];
    displayText = v16->_displayText;
    v16->_displayText = v23;

    v25 = [v15 copy];
    headerText = v16->_headerText;
    v16->_headerText = v25;

    v16->_customInfoType = a7;
  }

  return v16;
}

+ (id)textSuggestionWithInputText:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithInputText:v4 searchText:v4 displayText:v4 headerText:0 customInfoType:0];

  return v5;
}

+ (id)textSuggestionWithInputText:(id)a3 searchText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithInputText:v7 searchText:v6 displayText:v7 headerText:0 customInfoType:0];

  return v8;
}

+ (id)textSuggestionWithInputText:(id)a3 searchText:(id)a4 customInfoType:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithInputText:v9 searchText:v8 displayText:v9 headerText:0 customInfoType:a5];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UITextSuggestion);
  v5 = [(NSUUID *)self->_uuid copy];
  uuid = v4->_uuid;
  v4->_uuid = v5;

  v7 = [(NSString *)self->_inputText copy];
  inputText = v4->_inputText;
  v4->_inputText = v7;

  v9 = [(NSString *)self->_searchText copy];
  searchText = v4->_searchText;
  v4->_searchText = v9;

  v11 = [(NSString *)self->_displayText copy];
  displayText = v4->_displayText;
  v4->_displayText = v11;

  v13 = [(NSString *)self->_headerText copy];
  headerText = v4->_headerText;
  v4->_headerText = v13;

  v4->_displayStylePlain = self->_displayStylePlain;
  v15 = [(UIImage *)self->_image copy];
  image = v4->_image;
  v4->_image = v15;

  v17 = [(UIColor *)self->_foregroundColor copy];
  foregroundColor = v4->_foregroundColor;
  v4->_foregroundColor = v17;

  v19 = [(UIColor *)self->_backgroundColor copy];
  backgroundColor = v4->_backgroundColor;
  v4->_backgroundColor = v19;

  v4->_canDisplayInline = self->_canDisplayInline;
  v4->_customInfoType = self->_customInfoType;
  return v4;
}

- (TIKeyboardCandidate)_keyboardCandidate
{
  v3 = [(UITextSuggestion *)self customInfoType];

  return [TIKeyboardCandidateSuggestion candidateWithSuggestion:self customInfoType:v3];
}

+ (id)decodeTextSuggestions:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = a3;
    v5 = objc_opt_class();
    v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
    v10 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:v4 error:&v10];

    v8 = v10;
    if (v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to decode UITextSuggestions with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  v4 = [(UITextSuggestion *)self uuid];
  [v21 encodeObject:v4 forKey:@"uuid"];

  v5 = [(UITextSuggestion *)self inputText];

  if (v5)
  {
    v6 = [(UITextSuggestion *)self inputText];
    [v21 encodeObject:v6 forKey:@"inputText"];
  }

  v7 = [(UITextSuggestion *)self searchText];

  if (v7)
  {
    v8 = [(UITextSuggestion *)self searchText];
    [v21 encodeObject:v8 forKey:@"searchText"];
  }

  v9 = [(UITextSuggestion *)self displayText];

  if (v9)
  {
    v10 = [(UITextSuggestion *)self displayText];
    [v21 encodeObject:v10 forKey:@"displayText"];
  }

  v11 = [(UITextSuggestion *)self headerText];

  if (v11)
  {
    v12 = [(UITextSuggestion *)self headerText];
    [v21 encodeObject:v12 forKey:@"headerText"];
  }

  [v21 encodeBool:-[UITextSuggestion displayStylePlain](self forKey:{"displayStylePlain"), @"displayStylePlain"}];
  v13 = [(UITextSuggestion *)self image];

  if (v13)
  {
    v14 = [(UITextSuggestion *)self image];
    [v21 encodeObject:v14 forKey:@"image"];
  }

  v15 = [(UITextSuggestion *)self foregroundColor];

  if (v15)
  {
    v16 = [(UITextSuggestion *)self foregroundColor];
    [v21 encodeObject:v16 forKey:@"foregroundColor"];
  }

  v17 = [(UITextSuggestion *)self backgroundColor];

  if (v17)
  {
    v18 = [(UITextSuggestion *)self backgroundColor];
    [v21 encodeObject:v18 forKey:@"backgroundColor"];
  }

  if ([(UITextSuggestion *)self canDisplayInline])
  {
    [v21 encodeBool:-[UITextSuggestion canDisplayInline](self forKey:{"canDisplayInline"), @"canDisplayInline"}];
  }

  v19 = [(UITextSuggestion *)self customInfoType];
  v20 = v21;
  if (v19)
  {
    [v21 encodeInt64:-[UITextSuggestion customInfoType](self forKey:{"customInfoType"), @"customInfoType"}];
    v20 = v21;
  }
}

- (UITextSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UITextSuggestion;
  v5 = [(UITextSuggestion *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputText"];
    [(UITextSuggestion *)v5 setInputText:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchText"];
    [(UITextSuggestion *)v5 setSearchText:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayText"];
    [(UITextSuggestion *)v5 setDisplayText:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headerText"];
    [(UITextSuggestion *)v5 setHeaderText:v11];

    -[UITextSuggestion setDisplayStylePlain:](v5, "setDisplayStylePlain:", [v4 decodeBoolForKey:@"displayStylePlain"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    [(UITextSuggestion *)v5 setImage:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundColor"];
    [(UITextSuggestion *)v5 setForegroundColor:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    [(UITextSuggestion *)v5 setBackgroundColor:v14];

    -[UITextSuggestion setCanDisplayInline:](v5, "setCanDisplayInline:", [v4 decodeBoolForKey:@"canDisplayInline"]);
    -[UITextSuggestion setCustomInfoType:](v5, "setCustomInfoType:", [v4 decodeInt64ForKey:@"customInfoType"]);
  }

  return v5;
}

@end