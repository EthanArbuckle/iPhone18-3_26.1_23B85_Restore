@interface TIDeleteWordEvent
- (NSArray)allKeyboardInputs;
- (NSArray)allTouches;
- (NSArray)candidatesOffered;
- (NSArray)touchLayouts;
- (TIDeleteWordEvent)initWithCoder:(id)coder;
- (TIDeleteWordEvent)initWithTIKeyboardState:(id)state;
- (void)addCandidatesOffered:(id)offered;
- (void)addKeyInput:(id)input;
- (void)addKeyInputs:(id)inputs;
- (void)addTouches:(id)touches withLayoutIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIDeleteWordEvent

- (NSArray)touchLayouts
{
  touchLayoutsM = [(TIDeleteWordEvent *)self touchLayoutsM];
  v3 = [touchLayoutsM copy];

  return v3;
}

- (NSArray)candidatesOffered
{
  candidatesOfferedM = [(TIDeleteWordEvent *)self candidatesOfferedM];
  v3 = [candidatesOfferedM copy];

  return v3;
}

- (NSArray)allTouches
{
  allTouchesM = [(TIDeleteWordEvent *)self allTouchesM];
  v3 = [allTouchesM copy];

  return v3;
}

- (NSArray)allKeyboardInputs
{
  allKeyboardInputsM = [(TIDeleteWordEvent *)self allKeyboardInputsM];
  v3 = [allKeyboardInputsM copy];

  return v3;
}

- (void)addTouches:(id)touches withLayoutIDs:(id)ds
{
  dsCopy = ds;
  touchesCopy = touches;
  allTouchesM = [(TIDeleteWordEvent *)self allTouchesM];
  [allTouchesM addObjectsFromArray:touchesCopy];

  touchLayoutsM = [(TIDeleteWordEvent *)self touchLayoutsM];
  [touchLayoutsM addObjectsFromArray:dsCopy];
}

- (void)addCandidatesOffered:(id)offered
{
  offeredCopy = offered;
  candidatesOfferedM = [(TIDeleteWordEvent *)self candidatesOfferedM];
  [candidatesOfferedM addObjectsFromArray:offeredCopy];
}

- (void)addKeyInputs:(id)inputs
{
  inputsCopy = inputs;
  allKeyboardInputsM = [(TIDeleteWordEvent *)self allKeyboardInputsM];
  [allKeyboardInputsM addObjectsFromArray:inputsCopy];
}

- (void)addKeyInput:(id)input
{
  inputCopy = input;
  allKeyboardInputsM = [(TIDeleteWordEvent *)self allKeyboardInputsM];
  [allKeyboardInputsM addObject:inputCopy];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIDeleteWordEvent;
  coderCopy = coder;
  [(TIUserAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_allKeyboardInputsM forKey:{@"allKeyboardInputsM", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_allTouchesM forKey:@"allTouchesM"];
  [coderCopy encodeObject:self->_touchLayoutsM forKey:@"touchLayoutsM"];
  [coderCopy encodeObject:self->_candidatesOfferedM forKey:@"candidatesOfferedM"];
}

- (TIDeleteWordEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = TIDeleteWordEvent;
  v5 = [(TIUserAction *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"allKeyboardInputsM"];
    allKeyboardInputsM = v5->_allKeyboardInputsM;
    v5->_allKeyboardInputsM = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"allTouchesM"];
    allTouchesM = v5->_allTouchesM;
    v5->_allTouchesM = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"touchLayoutsM"];
    touchLayoutsM = v5->_touchLayoutsM;
    v5->_touchLayoutsM = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"candidatesOffered"];
    candidatesOfferedM = v5->_candidatesOfferedM;
    v5->_candidatesOfferedM = v24;

    [(TIUserAction *)v5 setActionType:1];
  }

  return v5;
}

- (TIDeleteWordEvent)initWithTIKeyboardState:(id)state
{
  v13.receiver = self;
  v13.super_class = TIDeleteWordEvent;
  v3 = [(TIUserAction *)&v13 initWithTIKeyboardState:state];
  if (v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    allKeyboardInputsM = v3->_allKeyboardInputsM;
    v3->_allKeyboardInputsM = array;

    array2 = [MEMORY[0x277CBEB18] array];
    allTouchesM = v3->_allTouchesM;
    v3->_allTouchesM = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    candidatesOfferedM = v3->_candidatesOfferedM;
    v3->_candidatesOfferedM = array3;

    array4 = [MEMORY[0x277CBEB18] array];
    touchLayoutsM = v3->_touchLayoutsM;
    v3->_touchLayoutsM = array4;

    [(TIUserAction *)v3 setActionType:1];
  }

  return v3;
}

@end