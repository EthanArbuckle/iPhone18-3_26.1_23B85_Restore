@interface _PSMessagesPinningFeedback
+ (id)acceptedWithActualPinnings:(id)pinnings OnboardingSuggestions:(id)suggestions;
+ (id)pinsChangedWithNowCurrentPins:(id)pins;
+ (id)skipOnboardingWithOnboardingSuggestions:(id)suggestions;
- (_PSMessagesPinningFeedback)initWithAction:(int64_t)action actualPinnings:(id)pinnings onboardingSuggestions:(id)suggestions trialId:(id)id eventDate:(id)date;
- (_PSMessagesPinningFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSMessagesPinningFeedback

+ (id)skipOnboardingWithOnboardingSuggestions:(id)suggestions
{
  v4 = MEMORY[0x1E695DF00];
  suggestionsCopy = suggestions;
  date = [v4 date];
  v7 = [[self alloc] initWithAction:0 actualPinnings:0 onboardingSuggestions:suggestionsCopy trialId:0 eventDate:date];

  return v7;
}

+ (id)acceptedWithActualPinnings:(id)pinnings OnboardingSuggestions:(id)suggestions
{
  v6 = MEMORY[0x1E695DF00];
  suggestionsCopy = suggestions;
  pinningsCopy = pinnings;
  date = [v6 date];
  v10 = [[self alloc] initWithAction:1 actualPinnings:pinningsCopy onboardingSuggestions:suggestionsCopy trialId:0 eventDate:date];

  return v10;
}

+ (id)pinsChangedWithNowCurrentPins:(id)pins
{
  v4 = MEMORY[0x1E695DF00];
  pinsCopy = pins;
  date = [v4 date];
  v7 = [[self alloc] initWithAction:2 actualPinnings:pinsCopy onboardingSuggestions:0 trialId:0 eventDate:date];

  return v7;
}

- (_PSMessagesPinningFeedback)initWithAction:(int64_t)action actualPinnings:(id)pinnings onboardingSuggestions:(id)suggestions trialId:(id)id eventDate:(id)date
{
  pinningsCopy = pinnings;
  suggestionsCopy = suggestions;
  idCopy = id;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = _PSMessagesPinningFeedback;
  v17 = [(_PSMessagesPinningFeedback *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_actionType = action;
    objc_storeStrong(&v17->_actualPinnings, pinnings);
    objc_storeStrong(&v18->_onboardingSuggestions, suggestions);
    objc_storeStrong(&v18->_trialId, id);
    objc_storeStrong(&v18->_eventDate, date);
  }

  return v18;
}

- (_PSMessagesPinningFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _PSMessagesPinningFeedback;
  v5 = [(_PSMessagesPinningFeedback *)&v21 init];
  if (v5)
  {
    v5->_actionType = [coderCopy decodeIntegerForKey:@"actionType"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_actualPinnings"];
    actualPinnings = v5->_actualPinnings;
    v5->_actualPinnings = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"onboardingSuggestions"];
    onboardingSuggestions = v5->_onboardingSuggestions;
    v5->_onboardingSuggestions = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trialId"];
    trialId = v5->_trialId;
    v5->_trialId = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDate"];
    eventDate = v5->_eventDate;
    v5->_eventDate = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  actionType = self->_actionType;
  coderCopy = coder;
  [coderCopy encodeInteger:actionType forKey:@"actionType"];
  [coderCopy encodeObject:self->_actualPinnings forKey:@"_actualPinnings"];
  [coderCopy encodeObject:self->_onboardingSuggestions forKey:@"onboardingSuggestions"];
  [coderCopy encodeObject:self->_trialId forKey:@"trialId"];
  [coderCopy encodeObject:self->_eventDate forKey:@"eventDate"];
}

@end