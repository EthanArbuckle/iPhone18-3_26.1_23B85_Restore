@interface _PSMessagesPinningFeedback
+ (id)acceptedWithActualPinnings:(id)a3 OnboardingSuggestions:(id)a4;
+ (id)pinsChangedWithNowCurrentPins:(id)a3;
+ (id)skipOnboardingWithOnboardingSuggestions:(id)a3;
- (_PSMessagesPinningFeedback)initWithAction:(int64_t)a3 actualPinnings:(id)a4 onboardingSuggestions:(id)a5 trialId:(id)a6 eventDate:(id)a7;
- (_PSMessagesPinningFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSMessagesPinningFeedback

+ (id)skipOnboardingWithOnboardingSuggestions:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [[a1 alloc] initWithAction:0 actualPinnings:0 onboardingSuggestions:v5 trialId:0 eventDate:v6];

  return v7;
}

+ (id)acceptedWithActualPinnings:(id)a3 OnboardingSuggestions:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  v10 = [[a1 alloc] initWithAction:1 actualPinnings:v8 onboardingSuggestions:v7 trialId:0 eventDate:v9];

  return v10;
}

+ (id)pinsChangedWithNowCurrentPins:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [[a1 alloc] initWithAction:2 actualPinnings:v5 onboardingSuggestions:0 trialId:0 eventDate:v6];

  return v7;
}

- (_PSMessagesPinningFeedback)initWithAction:(int64_t)a3 actualPinnings:(id)a4 onboardingSuggestions:(id)a5 trialId:(id)a6 eventDate:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = _PSMessagesPinningFeedback;
  v17 = [(_PSMessagesPinningFeedback *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_actionType = a3;
    objc_storeStrong(&v17->_actualPinnings, a4);
    objc_storeStrong(&v18->_onboardingSuggestions, a5);
    objc_storeStrong(&v18->_trialId, a6);
    objc_storeStrong(&v18->_eventDate, a7);
  }

  return v18;
}

- (_PSMessagesPinningFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _PSMessagesPinningFeedback;
  v5 = [(_PSMessagesPinningFeedback *)&v21 init];
  if (v5)
  {
    v5->_actionType = [v4 decodeIntegerForKey:@"actionType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_actualPinnings"];
    actualPinnings = v5->_actualPinnings;
    v5->_actualPinnings = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"onboardingSuggestions"];
    onboardingSuggestions = v5->_onboardingSuggestions;
    v5->_onboardingSuggestions = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trialId"];
    trialId = v5->_trialId;
    v5->_trialId = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDate"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  actionType = self->_actionType;
  v5 = a3;
  [v5 encodeInteger:actionType forKey:@"actionType"];
  [v5 encodeObject:self->_actualPinnings forKey:@"_actualPinnings"];
  [v5 encodeObject:self->_onboardingSuggestions forKey:@"onboardingSuggestions"];
  [v5 encodeObject:self->_trialId forKey:@"trialId"];
  [v5 encodeObject:self->_eventDate forKey:@"eventDate"];
}

@end