@interface TPSimpleNumberPad
+ (id)_numberPadCharacters;
- (TPSimpleNumberPad)initWithButtons:(id)a3;
- (TPSimpleNumberPad)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)_deleteButtonClicked:(id)a3 withEvent:(id)a4;
- (void)_updateDeleteButton;
- (void)buttonUp:(id)a3;
- (void)setShowsDeleteButton:(BOOL)a3;
@end

@implementation TPSimpleNumberPad

+ (id)_numberPadCharacters
{
  if (_numberPadCharacters_onceToken != -1)
  {
    +[TPSimpleNumberPad _numberPadCharacters];
  }

  v3 = _numberPadCharacters_numberPadCharacters;

  return v3;
}

void __41__TPSimpleNumberPad__numberPadCharacters__block_invoke()
{
  v15[12] = *MEMORY[0x1E69E9840];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v15[0] = v14;
  v13 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v15[1] = v13;
  v0 = [MEMORY[0x1E696AD98] numberWithInt:2];
  v15[2] = v0;
  v1 = [MEMORY[0x1E696AD98] numberWithInt:3];
  v15[3] = v1;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v15[4] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:5];
  v15[5] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:6];
  v15[6] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:7];
  v15[7] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:8];
  v15[8] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:13];
  v15[9] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:10];
  v15[10] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:13];
  v15[11] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:12];
  v11 = _numberPadCharacters_numberPadCharacters;
  _numberPadCharacters_numberPadCharacters = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (TPSimpleNumberPad)initWithButtons:(id)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Please call -[PHVoicemailSetupPINNumberPad initWithFrame:]"];
  NSLog(&cfstr_TuassertionFai.isa, v5);

  if (_TUAssertShouldCrashApplication())
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TPSimpleNumberPad.m" lineNumber:59 description:@"Please call -[PHVoicemailSetupPINNumberPad initWithFrame:]"];
  }

  return 0;
}

- (TPSimpleNumberPad)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v52 = *MEMORY[0x1E69E9840];
  v10 = +[TPSimpleNumberPad _numberPadCharacters];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v48;
    do
    {
      v16 = 0;
      do
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [objc_alloc(-[TPSimpleNumberPad numberPadButtonClass](self "numberPadButtonClass"))];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v14);
  }

  v46.receiver = self;
  v46.super_class = TPSimpleNumberPad;
  v18 = [(TPNumberPad *)&v46 initWithButtons:v11];
  v19 = v18;
  if (v18)
  {
    [(TPSimpleNumberPad *)v18 setFrame:x, y, width, height];
    v20 = [MEMORY[0x1E69DC738] buttonWithType:1];
    deleteButton = v19->_deleteButton;
    v19->_deleteButton = v20;

    [(UIButton *)v19->_deleteButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v19->_deleteButton setBackgroundColor:v22];

    LODWORD(v23) = 1148846080;
    [(UIButton *)v19->_deleteButton setContentCompressionResistancePriority:0 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UIButton *)v19->_deleteButton setContentCompressionResistancePriority:1 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UIButton *)v19->_deleteButton setContentHuggingPriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(UIButton *)v19->_deleteButton setContentHuggingPriority:1 forAxis:v26];
    v27 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
    v28 = [(UIButton *)v19->_deleteButton titleLabel];
    [v28 setFont:v27];

    v29 = v19->_deleteButton;
    v30 = TelephonyUIBundle();
    v31 = [v30 localizedStringForKey:@"DELETE" value:&stru_1F2CA8008 table:@"General"];
    [(UIButton *)v29 setTitle:v31 forState:0];

    v32 = v19->_deleteButton;
    v33 = [MEMORY[0x1E69DC888] dynamicLabelColor];
    [(UIButton *)v32 setTintColor:v33];

    v34 = v19->_deleteButton;
    v35 = [MEMORY[0x1E69DC888] dynamicLabelColor];
    [(UIButton *)v34 setTitleColor:v35 forState:0];

    [(UIButton *)v19->_deleteButton addTarget:v19 action:sel__deleteButtonClicked_withEvent_ forControlEvents:64];
    [(TPSimpleNumberPad *)v19 addSubview:v19->_deleteButton];
    v36 = MEMORY[0x1E696ACD8];
    v37 = v19->_deleteButton;
    v38 = [v11 objectAtIndexedSubscript:8];
    v39 = [v36 constraintWithItem:v37 attribute:9 relatedBy:0 toItem:v38 attribute:9 multiplier:1.0 constant:0.0];
    [(TPSimpleNumberPad *)v19 addConstraint:v39];

    v40 = MEMORY[0x1E696ACD8];
    v41 = v19->_deleteButton;
    v42 = [v11 objectAtIndexedSubscript:10];
    v43 = [v40 constraintWithItem:v41 attribute:10 relatedBy:0 toItem:v42 attribute:10 multiplier:1.0 constant:0.0];
    [(TPSimpleNumberPad *)v19 addConstraint:v43];

    [(TPSimpleNumberPad *)v19 _updateDeleteButton];
  }

  v44 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)buttonUp:(id)a3
{
  v7 = a3;
  v4 = [(TPSimpleNumberPad *)self delegate];

  if (v4)
  {
    v5 = [(TPSimpleNumberPad *)self delegate];
    v6 = TPStringForNumberPadCharacter([v7 character]);
    [v5 simpleNumberPad:self buttonPressedWithCharacter:v6];
  }
}

- (void)_deleteButtonClicked:(id)a3 withEvent:(id)a4
{
  v5 = [(TPSimpleNumberPad *)self delegate:a3];

  if (v5)
  {
    v6 = [(TPSimpleNumberPad *)self delegate];
    [v6 simpleNumberPadDeletePressed:self];
  }
}

- (void)_updateDeleteButton
{
  deleteButton = self->_deleteButton;
  v4 = [(TPSimpleNumberPad *)self showsDeleteButton];
  v5 = 0.0;
  if (v4)
  {
    v5 = 1.0;
  }

  [(UIButton *)deleteButton setAlpha:v5];
  v6 = self->_deleteButton;
  v7 = [(TPSimpleNumberPad *)self showsDeleteButton];

  [(UIButton *)v6 setEnabled:v7];
}

- (void)setShowsDeleteButton:(BOOL)a3
{
  if (self->_showsDeleteButton != a3)
  {
    self->_showsDeleteButton = a3;
    [(TPSimpleNumberPad *)self _updateDeleteButton];
  }
}

@end