@interface SRCompactViewControllerContentTesterState
- (SRCompactViewControllerContentTesterState)initWithDeviceIsPad:(BOOL)pad navigationStackIsPopping:(BOOL)popping navigationStackSize:(int64_t)size navigationBarHasContent:(BOOL)content multiLevelViewHasContent:(BOOL)hasContent editableUtteranceViewHasContent:(BOOL)viewHasContent compactViewHasContent:(BOOL)compactViewHasContent siriViewControllerIsEditing:(BOOL)self0 keyboardHasContent:(BOOL)self1 contextMenuIsPresented:(BOOL)self2;
- (id)_debugDescriptionForProperty:(id)property BOOLValue:(BOOL)value;
- (id)_debugDescriptionForProperty:(id)property integerValue:(int64_t)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
@end

@implementation SRCompactViewControllerContentTesterState

- (SRCompactViewControllerContentTesterState)initWithDeviceIsPad:(BOOL)pad navigationStackIsPopping:(BOOL)popping navigationStackSize:(int64_t)size navigationBarHasContent:(BOOL)content multiLevelViewHasContent:(BOOL)hasContent editableUtteranceViewHasContent:(BOOL)viewHasContent compactViewHasContent:(BOOL)compactViewHasContent siriViewControllerIsEditing:(BOOL)self0 keyboardHasContent:(BOOL)self1 contextMenuIsPresented:(BOOL)self2
{
  v19.receiver = self;
  v19.super_class = SRCompactViewControllerContentTesterState;
  result = [(SRCompactViewControllerContentTesterState *)&v19 init];
  if (result)
  {
    result->_deviceIsPad = pad;
    result->_navigationStackIsPopping = popping;
    result->_navigationStackSize = size;
    result->_navigationBarHasContent = content;
    result->_multiLevelViewHasContent = hasContent;
    result->_editableUtteranceViewHasContent = viewHasContent;
    result->_compactViewHasContent = compactViewHasContent;
    result->_siriViewControllerIsEditing = editing;
    result->_keyboardHasContent = keyboardHasContent;
    result->_contextMenuIsPresented = presented;
  }

  return result;
}

- (id)_debugDescriptionForProperty:(id)property BOOLValue:(BOOL)value
{
  if (value)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  return [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:property formattedValue:v4];
}

- (id)_debugDescriptionForProperty:(id)property integerValue:(int64_t)value
{
  v6 = MEMORY[0x277CCACA8];
  propertyCopy = property;
  value = [v6 stringWithFormat:@"%zd", value];
  v9 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:propertyCopy formattedValue:value];

  return v9;
}

- (id)debugDescription
{
  v30[10] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  v24 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"deviceIsPad" BOOLValue:[(SRCompactViewControllerContentTesterState *)self deviceIsPad]];
  v30[0] = v24;
  v23 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"navigationStackIsPopping" BOOLValue:[(SRCompactViewControllerContentTesterState *)self deviceIsPad]];
  v30[1] = v23;
  v5 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"navigationStackSize" integerValue:[(SRCompactViewControllerContentTesterState *)self navigationStackSize]];
  v30[2] = v5;
  v6 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"navigationBarHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self navigationBarHasContent]];
  v30[3] = v6;
  v7 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"multiLevelViewHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self multiLevelViewHasContent]];
  v30[4] = v7;
  v8 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"editableUtteranceViewHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self editableUtteranceViewHasContent]];
  v30[5] = v8;
  v9 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"compactViewHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self compactViewHasContent]];
  v30[6] = v9;
  v10 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"siriViewControllerIsEditing" BOOLValue:[(SRCompactViewControllerContentTesterState *)self siriViewControllerIsEditing]];
  v30[7] = v10;
  v11 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"keyboardHasContent" BOOLValue:[(SRCompactViewControllerContentTesterState *)self keyboardHasContent]];
  v30[8] = v11;
  v12 = [(SRCompactViewControllerContentTesterState *)self _debugDescriptionForProperty:@"contextMenuIsPresented" BOOLValue:[(SRCompactViewControllerContentTesterState *)self contextMenuIsPresented]];
  v30[9] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:10];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        [v3 appendString:@"\n\t"];
        [v3 appendString:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  [v3 appendString:@"\n>"];
  v20 = [v3 mutableCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15 = [SRCompactViewControllerContentTesterState alloc];
  deviceIsPad = [(SRCompactViewControllerContentTesterState *)self deviceIsPad];
  navigationStackIsPopping = [(SRCompactViewControllerContentTesterState *)self navigationStackIsPopping];
  navigationStackSize = [(SRCompactViewControllerContentTesterState *)self navigationStackSize];
  navigationBarHasContent = [(SRCompactViewControllerContentTesterState *)self navigationBarHasContent];
  multiLevelViewHasContent = [(SRCompactViewControllerContentTesterState *)self multiLevelViewHasContent];
  editableUtteranceViewHasContent = [(SRCompactViewControllerContentTesterState *)self editableUtteranceViewHasContent];
  compactViewHasContent = [(SRCompactViewControllerContentTesterState *)self compactViewHasContent];
  siriViewControllerIsEditing = [(SRCompactViewControllerContentTesterState *)self siriViewControllerIsEditing];
  keyboardHasContent = [(SRCompactViewControllerContentTesterState *)self keyboardHasContent];
  BYTE3(v14) = [(SRCompactViewControllerContentTesterState *)self contextMenuIsPresented];
  BYTE2(v14) = keyboardHasContent;
  BYTE1(v14) = siriViewControllerIsEditing;
  LOBYTE(v14) = compactViewHasContent;
  return [SRCompactViewControllerContentTesterState initWithDeviceIsPad:v15 navigationStackIsPopping:"initWithDeviceIsPad:navigationStackIsPopping:navigationStackSize:navigationBarHasContent:multiLevelViewHasContent:editableUtteranceViewHasContent:compactViewHasContent:siriViewControllerIsEditing:keyboardHasContent:contextMenuIsPresented:" navigationStackSize:deviceIsPad navigationBarHasContent:navigationStackIsPopping multiLevelViewHasContent:navigationStackSize editableUtteranceViewHasContent:navigationBarHasContent compactViewHasContent:multiLevelViewHasContent siriViewControllerIsEditing:editableUtteranceViewHasContent keyboardHasContent:v14 contextMenuIsPresented:?];
}

@end