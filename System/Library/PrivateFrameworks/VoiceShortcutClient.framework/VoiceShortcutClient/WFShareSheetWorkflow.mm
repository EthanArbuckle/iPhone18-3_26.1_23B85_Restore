@interface WFShareSheetWorkflow
- (WFShareSheetWorkflow)initWithCoder:(id)coder;
- (WFShareSheetWorkflow)initWithIdentifier:(id)identifier name:(id)name glyphCharacter:(unsigned __int16)character;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setIconImage:(CGImage *)image scale:(double)scale;
@end

@implementation WFShareSheetWorkflow

- (WFShareSheetWorkflow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [coderCopy decodeInt32ForKey:@"glyphCharacter"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(WFShareSheetWorkflow *)self initWithIdentifier:v5 name:v6 glyphCharacter:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFShareSheetWorkflow *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  name = [(WFShareSheetWorkflow *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInt32:-[WFShareSheetWorkflow glyphCharacter](self forKey:{"glyphCharacter"), @"glyphCharacter"}];
}

- (void)setIconImage:(CGImage *)image scale:(double)scale
{
  CGImageRelease(self->_iconImage);
  self->_iconImage = image;
  self->_iconScale = scale;

  CGImageRetain(image);
}

- (void)dealloc
{
  CGImageRelease(self->_iconImage);
  v3.receiver = self;
  v3.super_class = WFShareSheetWorkflow;
  [(WFShareSheetWorkflow *)&v3 dealloc];
}

- (WFShareSheetWorkflow)initWithIdentifier:(id)identifier name:(id)name glyphCharacter:(unsigned __int16)character
{
  identifierCopy = identifier;
  nameCopy = name;
  v11 = nameCopy;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflow.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflow.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = WFShareSheetWorkflow;
  v12 = [(WFShareSheetWorkflow *)&v21 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [v11 copy];
    name = v12->_name;
    v12->_name = v15;

    v12->_glyphCharacter = character;
    v17 = v12;
  }

  return v12;
}

@end