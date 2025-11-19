@interface WFShareSheetWorkflow
- (WFShareSheetWorkflow)initWithCoder:(id)a3;
- (WFShareSheetWorkflow)initWithIdentifier:(id)a3 name:(id)a4 glyphCharacter:(unsigned __int16)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setIconImage:(CGImage *)a3 scale:(double)a4;
@end

@implementation WFShareSheetWorkflow

- (WFShareSheetWorkflow)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v7 = [v4 decodeInt32ForKey:@"glyphCharacter"];

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
    v9 = 0;
  }

  else
  {
    self = [(WFShareSheetWorkflow *)self initWithIdentifier:v5 name:v6 glyphCharacter:v7];
    v9 = self;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(WFShareSheetWorkflow *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  v5 = [(WFShareSheetWorkflow *)self name];
  [v6 encodeObject:v5 forKey:@"name"];

  [v6 encodeInt32:-[WFShareSheetWorkflow glyphCharacter](self forKey:{"glyphCharacter"), @"glyphCharacter"}];
}

- (void)setIconImage:(CGImage *)a3 scale:(double)a4
{
  CGImageRelease(self->_iconImage);
  self->_iconImage = a3;
  self->_iconScale = a4;

  CGImageRetain(a3);
}

- (void)dealloc
{
  CGImageRelease(self->_iconImage);
  v3.receiver = self;
  v3.super_class = WFShareSheetWorkflow;
  [(WFShareSheetWorkflow *)&v3 dealloc];
}

- (WFShareSheetWorkflow)initWithIdentifier:(id)a3 name:(id)a4 glyphCharacter:(unsigned __int16)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflow.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflow.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = WFShareSheetWorkflow;
  v12 = [(WFShareSheetWorkflow *)&v21 init];
  if (v12)
  {
    v13 = [v9 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [v11 copy];
    name = v12->_name;
    v12->_name = v15;

    v12->_glyphCharacter = a5;
    v17 = v12;
  }

  return v12;
}

@end