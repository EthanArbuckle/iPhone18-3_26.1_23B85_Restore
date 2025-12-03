@interface SCROBrailleUIBraille
+ (id)lineWithBraille:(id)braille shouldTruncateAtPanBoundary:(BOOL)boundary;
+ (id)lineWithEditableBraille:(id)braille selection:(_NSRange)selection;
+ (id)lineWithEditablePlaceholder:(id)placeholder;
+ (id)multiLineBraille:(id)braille focus:(_NSRange)focus;
+ (id)multiLineEditableBraille:(id)braille selection:(_NSRange)selection;
- (SCROBrailleUIBraille)initWithBraille:(id)braille selection:(_NSRange)selection focus:(_NSRange)focus isEditable:(BOOL)editable isMultiLine:(BOOL)line shouldTruncateAtPanBoundary:(BOOL)boundary;
- (_NSRange)focus;
- (_NSRange)selection;
@end

@implementation SCROBrailleUIBraille

+ (id)lineWithBraille:(id)braille shouldTruncateAtPanBoundary:(BOOL)boundary
{
  brailleCopy = braille;
  BYTE1(v8) = boundary;
  LOBYTE(v8) = 0;
  v6 = [[SCROBrailleUIBraille alloc] initWithBraille:brailleCopy selection:0x7FFFFFFFFFFFFFFFLL focus:0 isEditable:0x7FFFFFFFFFFFFFFFLL isMultiLine:0 shouldTruncateAtPanBoundary:0, v8];

  return v6;
}

+ (id)lineWithEditableBraille:(id)braille selection:(_NSRange)selection
{
  length = selection.length;
  location = selection.location;
  brailleCopy = braille;
  v7 = [[SCROBrailleUIBraille alloc] initWithBraille:brailleCopy selection:location isEditable:length isMultiLine:1, 0];

  return v7;
}

+ (id)lineWithEditablePlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v4 = -[SCROBrailleUIBraille initWithBraille:selection:isEditable:isMultiLine:]([SCROBrailleUIBraille alloc], "initWithBraille:selection:isEditable:isMultiLine:", placeholderCopy, [placeholderCopy length], 0, 1, 0);

  return v4;
}

+ (id)multiLineBraille:(id)braille focus:(_NSRange)focus
{
  length = focus.length;
  location = focus.location;
  brailleCopy = braille;
  LOWORD(v9) = 1;
  v7 = [[SCROBrailleUIBraille alloc] initWithBraille:brailleCopy selection:0x7FFFFFFFFFFFFFFFLL focus:0 isEditable:location isMultiLine:length shouldTruncateAtPanBoundary:0, v9];

  return v7;
}

+ (id)multiLineEditableBraille:(id)braille selection:(_NSRange)selection
{
  length = selection.length;
  location = selection.location;
  brailleCopy = braille;
  v7 = [[SCROBrailleUIBraille alloc] initWithBraille:brailleCopy selection:location isEditable:length isMultiLine:1, 1];

  return v7;
}

- (SCROBrailleUIBraille)initWithBraille:(id)braille selection:(_NSRange)selection focus:(_NSRange)focus isEditable:(BOOL)editable isMultiLine:(BOOL)line shouldTruncateAtPanBoundary:(BOOL)boundary
{
  length = focus.length;
  location = focus.location;
  v11 = selection.length;
  v12 = selection.location;
  brailleCopy = braille;
  v19.receiver = self;
  v19.super_class = SCROBrailleUIBraille;
  v16 = [(SCROBrailleUIBraille *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_braille, braille);
    v17->_selection.location = v12;
    v17->_selection.length = v11;
    v17->_focus.location = location;
    v17->_focus.length = length;
    v17->_isEditable = editable;
    v17->_isMultiLine = line;
    v17->_shouldTruncateAtPanBoundary = boundary;
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