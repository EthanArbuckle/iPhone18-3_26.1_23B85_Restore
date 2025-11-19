@interface SCROBrailleUIBraille
+ (id)lineWithBraille:(id)a3 shouldTruncateAtPanBoundary:(BOOL)a4;
+ (id)lineWithEditableBraille:(id)a3 selection:(_NSRange)a4;
+ (id)lineWithEditablePlaceholder:(id)a3;
+ (id)multiLineBraille:(id)a3 focus:(_NSRange)a4;
+ (id)multiLineEditableBraille:(id)a3 selection:(_NSRange)a4;
- (SCROBrailleUIBraille)initWithBraille:(id)a3 selection:(_NSRange)a4 focus:(_NSRange)a5 isEditable:(BOOL)a6 isMultiLine:(BOOL)a7 shouldTruncateAtPanBoundary:(BOOL)a8;
- (_NSRange)focus;
- (_NSRange)selection;
@end

@implementation SCROBrailleUIBraille

+ (id)lineWithBraille:(id)a3 shouldTruncateAtPanBoundary:(BOOL)a4
{
  v5 = a3;
  BYTE1(v8) = a4;
  LOBYTE(v8) = 0;
  v6 = [[SCROBrailleUIBraille alloc] initWithBraille:v5 selection:0x7FFFFFFFFFFFFFFFLL focus:0 isEditable:0x7FFFFFFFFFFFFFFFLL isMultiLine:0 shouldTruncateAtPanBoundary:0, v8];

  return v6;
}

+ (id)lineWithEditableBraille:(id)a3 selection:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = [[SCROBrailleUIBraille alloc] initWithBraille:v6 selection:location isEditable:length isMultiLine:1, 0];

  return v7;
}

+ (id)lineWithEditablePlaceholder:(id)a3
{
  v3 = a3;
  v4 = -[SCROBrailleUIBraille initWithBraille:selection:isEditable:isMultiLine:]([SCROBrailleUIBraille alloc], "initWithBraille:selection:isEditable:isMultiLine:", v3, [v3 length], 0, 1, 0);

  return v4;
}

+ (id)multiLineBraille:(id)a3 focus:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  LOWORD(v9) = 1;
  v7 = [[SCROBrailleUIBraille alloc] initWithBraille:v6 selection:0x7FFFFFFFFFFFFFFFLL focus:0 isEditable:location isMultiLine:length shouldTruncateAtPanBoundary:0, v9];

  return v7;
}

+ (id)multiLineEditableBraille:(id)a3 selection:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = [[SCROBrailleUIBraille alloc] initWithBraille:v6 selection:location isEditable:length isMultiLine:1, 1];

  return v7;
}

- (SCROBrailleUIBraille)initWithBraille:(id)a3 selection:(_NSRange)a4 focus:(_NSRange)a5 isEditable:(BOOL)a6 isMultiLine:(BOOL)a7 shouldTruncateAtPanBoundary:(BOOL)a8
{
  length = a5.length;
  location = a5.location;
  v11 = a4.length;
  v12 = a4.location;
  v15 = a3;
  v19.receiver = self;
  v19.super_class = SCROBrailleUIBraille;
  v16 = [(SCROBrailleUIBraille *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_braille, a3);
    v17->_selection.location = v12;
    v17->_selection.length = v11;
    v17->_focus.location = location;
    v17->_focus.length = length;
    v17->_isEditable = a6;
    v17->_isMultiLine = a7;
    v17->_shouldTruncateAtPanBoundary = a8;
  }

  return v17;
}

- (_NSRange)selection
{
  length = self->_selection.length;
  location = self->_selection.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)focus
{
  length = self->_focus.length;
  location = self->_focus.location;
  result.length = length;
  result.location = location;
  return result;
}

@end