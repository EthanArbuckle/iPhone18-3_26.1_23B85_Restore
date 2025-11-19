@interface TIDeleteWordEvent
- (NSArray)allKeyboardInputs;
- (NSArray)allTouches;
- (NSArray)candidatesOffered;
- (NSArray)touchLayouts;
- (TIDeleteWordEvent)initWithCoder:(id)a3;
- (TIDeleteWordEvent)initWithTIKeyboardState:(id)a3;
- (void)addCandidatesOffered:(id)a3;
- (void)addKeyInput:(id)a3;
- (void)addKeyInputs:(id)a3;
- (void)addTouches:(id)a3 withLayoutIDs:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIDeleteWordEvent

- (NSArray)touchLayouts
{
  v2 = [(TIDeleteWordEvent *)self touchLayoutsM];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)candidatesOffered
{
  v2 = [(TIDeleteWordEvent *)self candidatesOfferedM];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)allTouches
{
  v2 = [(TIDeleteWordEvent *)self allTouchesM];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)allKeyboardInputs
{
  v2 = [(TIDeleteWordEvent *)self allKeyboardInputsM];
  v3 = [v2 copy];

  return v3;
}

- (void)addTouches:(id)a3 withLayoutIDs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIDeleteWordEvent *)self allTouchesM];
  [v8 addObjectsFromArray:v7];

  v9 = [(TIDeleteWordEvent *)self touchLayoutsM];
  [v9 addObjectsFromArray:v6];
}

- (void)addCandidatesOffered:(id)a3
{
  v4 = a3;
  v5 = [(TIDeleteWordEvent *)self candidatesOfferedM];
  [v5 addObjectsFromArray:v4];
}

- (void)addKeyInputs:(id)a3
{
  v4 = a3;
  v5 = [(TIDeleteWordEvent *)self allKeyboardInputsM];
  [v5 addObjectsFromArray:v4];
}

- (void)addKeyInput:(id)a3
{
  v4 = a3;
  v5 = [(TIDeleteWordEvent *)self allKeyboardInputsM];
  [v5 addObject:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIDeleteWordEvent;
  v4 = a3;
  [(TIUserAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_allKeyboardInputsM forKey:{@"allKeyboardInputsM", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_allTouchesM forKey:@"allTouchesM"];
  [v4 encodeObject:self->_touchLayoutsM forKey:@"touchLayoutsM"];
  [v4 encodeObject:self->_candidatesOfferedM forKey:@"candidatesOfferedM"];
}

- (TIDeleteWordEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = TIDeleteWordEvent;
  v5 = [(TIUserAction *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"allKeyboardInputsM"];
    allKeyboardInputsM = v5->_allKeyboardInputsM;
    v5->_allKeyboardInputsM = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"allTouchesM"];
    allTouchesM = v5->_allTouchesM;
    v5->_allTouchesM = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"touchLayoutsM"];
    touchLayoutsM = v5->_touchLayoutsM;
    v5->_touchLayoutsM = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"candidatesOffered"];
    candidatesOfferedM = v5->_candidatesOfferedM;
    v5->_candidatesOfferedM = v24;

    [(TIUserAction *)v5 setActionType:1];
  }

  return v5;
}

- (TIDeleteWordEvent)initWithTIKeyboardState:(id)a3
{
  v13.receiver = self;
  v13.super_class = TIDeleteWordEvent;
  v3 = [(TIUserAction *)&v13 initWithTIKeyboardState:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    allKeyboardInputsM = v3->_allKeyboardInputsM;
    v3->_allKeyboardInputsM = v4;

    v6 = [MEMORY[0x277CBEB18] array];
    allTouchesM = v3->_allTouchesM;
    v3->_allTouchesM = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    candidatesOfferedM = v3->_candidatesOfferedM;
    v3->_candidatesOfferedM = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    touchLayoutsM = v3->_touchLayoutsM;
    v3->_touchLayoutsM = v10;

    [(TIUserAction *)v3 setActionType:1];
  }

  return v3;
}

@end