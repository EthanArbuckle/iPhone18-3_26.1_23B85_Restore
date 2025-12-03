@interface UITextSuggestion
+ (id)decodeTextSuggestions:(id)suggestions;
+ (id)textSuggestionWithInputText:(id)text;
+ (id)textSuggestionWithInputText:(id)text searchText:(id)searchText;
+ (id)textSuggestionWithInputText:(id)text searchText:(id)searchText customInfoType:(unint64_t)type;
- (TIKeyboardCandidate)_keyboardCandidate;
- (UITextSuggestion)init;
- (UITextSuggestion)initWithCoder:(id)coder;
- (UITextSuggestion)initWithInputText:(id)text searchText:(id)searchText displayText:(id)displayText headerText:(id)headerText customInfoType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (UITextSuggestion)initWithInputText:(id)text searchText:(id)searchText displayText:(id)displayText headerText:(id)headerText customInfoType:(unint64_t)type
{
  textCopy = text;
  searchTextCopy = searchText;
  displayTextCopy = displayText;
  headerTextCopy = headerText;
  v28.receiver = self;
  v28.super_class = UITextSuggestion;
  v16 = [(UITextSuggestion *)&v28 init];
  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v19 = [textCopy copy];
    inputText = v16->_inputText;
    v16->_inputText = v19;

    v21 = [searchTextCopy copy];
    searchText = v16->_searchText;
    v16->_searchText = v21;

    v23 = [displayTextCopy copy];
    displayText = v16->_displayText;
    v16->_displayText = v23;

    v25 = [headerTextCopy copy];
    headerText = v16->_headerText;
    v16->_headerText = v25;

    v16->_customInfoType = type;
  }

  return v16;
}

+ (id)textSuggestionWithInputText:(id)text
{
  textCopy = text;
  v5 = [[self alloc] initWithInputText:textCopy searchText:textCopy displayText:textCopy headerText:0 customInfoType:0];

  return v5;
}

+ (id)textSuggestionWithInputText:(id)text searchText:(id)searchText
{
  searchTextCopy = searchText;
  textCopy = text;
  v8 = [[self alloc] initWithInputText:textCopy searchText:searchTextCopy displayText:textCopy headerText:0 customInfoType:0];

  return v8;
}

+ (id)textSuggestionWithInputText:(id)text searchText:(id)searchText customInfoType:(unint64_t)type
{
  searchTextCopy = searchText;
  textCopy = text;
  v10 = [[self alloc] initWithInputText:textCopy searchText:searchTextCopy displayText:textCopy headerText:0 customInfoType:type];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
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
  customInfoType = [(UITextSuggestion *)self customInfoType];

  return [TIKeyboardCandidateSuggestion candidateWithSuggestion:self customInfoType:customInfoType];
}

+ (id)decodeTextSuggestions:(id)suggestions
{
  v13 = *MEMORY[0x1E69E9840];
  if (suggestions)
  {
    v3 = MEMORY[0x1E695DFD8];
    suggestionsCopy = suggestions;
    v5 = objc_opt_class();
    v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
    v10 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v6 fromData:suggestionsCopy error:&v10];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(UITextSuggestion *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  inputText = [(UITextSuggestion *)self inputText];

  if (inputText)
  {
    inputText2 = [(UITextSuggestion *)self inputText];
    [coderCopy encodeObject:inputText2 forKey:@"inputText"];
  }

  searchText = [(UITextSuggestion *)self searchText];

  if (searchText)
  {
    searchText2 = [(UITextSuggestion *)self searchText];
    [coderCopy encodeObject:searchText2 forKey:@"searchText"];
  }

  displayText = [(UITextSuggestion *)self displayText];

  if (displayText)
  {
    displayText2 = [(UITextSuggestion *)self displayText];
    [coderCopy encodeObject:displayText2 forKey:@"displayText"];
  }

  headerText = [(UITextSuggestion *)self headerText];

  if (headerText)
  {
    headerText2 = [(UITextSuggestion *)self headerText];
    [coderCopy encodeObject:headerText2 forKey:@"headerText"];
  }

  [coderCopy encodeBool:-[UITextSuggestion displayStylePlain](self forKey:{"displayStylePlain"), @"displayStylePlain"}];
  image = [(UITextSuggestion *)self image];

  if (image)
  {
    image2 = [(UITextSuggestion *)self image];
    [coderCopy encodeObject:image2 forKey:@"image"];
  }

  foregroundColor = [(UITextSuggestion *)self foregroundColor];

  if (foregroundColor)
  {
    foregroundColor2 = [(UITextSuggestion *)self foregroundColor];
    [coderCopy encodeObject:foregroundColor2 forKey:@"foregroundColor"];
  }

  backgroundColor = [(UITextSuggestion *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(UITextSuggestion *)self backgroundColor];
    [coderCopy encodeObject:backgroundColor2 forKey:@"backgroundColor"];
  }

  if ([(UITextSuggestion *)self canDisplayInline])
  {
    [coderCopy encodeBool:-[UITextSuggestion canDisplayInline](self forKey:{"canDisplayInline"), @"canDisplayInline"}];
  }

  customInfoType = [(UITextSuggestion *)self customInfoType];
  v20 = coderCopy;
  if (customInfoType)
  {
    [coderCopy encodeInt64:-[UITextSuggestion customInfoType](self forKey:{"customInfoType"), @"customInfoType"}];
    v20 = coderCopy;
  }
}

- (UITextSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = UITextSuggestion;
  v5 = [(UITextSuggestion *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputText"];
    [(UITextSuggestion *)v5 setInputText:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchText"];
    [(UITextSuggestion *)v5 setSearchText:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayText"];
    [(UITextSuggestion *)v5 setDisplayText:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headerText"];
    [(UITextSuggestion *)v5 setHeaderText:v11];

    -[UITextSuggestion setDisplayStylePlain:](v5, "setDisplayStylePlain:", [coderCopy decodeBoolForKey:@"displayStylePlain"]);
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    [(UITextSuggestion *)v5 setImage:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foregroundColor"];
    [(UITextSuggestion *)v5 setForegroundColor:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    [(UITextSuggestion *)v5 setBackgroundColor:v14];

    -[UITextSuggestion setCanDisplayInline:](v5, "setCanDisplayInline:", [coderCopy decodeBoolForKey:@"canDisplayInline"]);
    -[UITextSuggestion setCustomInfoType:](v5, "setCustomInfoType:", [coderCopy decodeInt64ForKey:@"customInfoType"]);
  }

  return v5;
}

@end