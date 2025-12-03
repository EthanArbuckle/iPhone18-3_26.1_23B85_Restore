@interface PPTripEvent
- (PPTripEvent)initWithCoder:(id)coder;
- (PPTripEvent)initWithStartDate:(id)date endDate:(id)endDate tripParts:(id)parts;
- (id)description;
- (id)destinations;
- (id)destinationsBasedTitle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPTripEvent

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  title = [(PPScoredEvent *)self title];
  v5 = [v3 initWithFormat:@"<PPTripEvent t:'%@'>", title];

  return v5;
}

- (id)destinationsBasedTitle
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"MMM d, yyyy"];
  startDate = [(PPScoredEvent *)self startDate];
  v5 = [v3 stringFromDate:startDate];

  endDate = [(PPScoredEvent *)self endDate];
  v7 = [v3 stringFromDate:endDate];

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  destinations = [(PPTripEvent *)self destinations];
  v10 = [destinations _pas_componentsJoinedByString:@" "];;
  v11 = [v8 initWithFormat:@"Trip to %@ - %@ to %@", v10, v5, v7];

  return v11;
}

- (id)destinations
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_tripParts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        destinationString = [*(*(&v12 + 1) + 8 * i) destinationString];
        [v3 addObject:destinationString];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PPTripEvent;
  coderCopy = coder;
  [(PPScoredEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tripParts forKey:{@"tps", v5.receiver, v5.super_class}];
}

- (PPTripEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PPTripEvent;
  v5 = [(PPScoredEvent *)&v13 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"tps"];

  if (v10)
  {
    tripParts = v5->_tripParts;
    v5->_tripParts = v10;

LABEL_4:
    v10 = v5;
  }

  return v10;
}

- (PPTripEvent)initWithStartDate:(id)date endDate:(id)endDate tripParts:(id)parts
{
  partsCopy = parts;
  v14.receiver = self;
  v14.super_class = PPTripEvent;
  v10 = [(PPScoredEvent *)&v14 initWithStartDate:date endDate:endDate title:0 score:1.0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_tripParts, parts);
    destinationsBasedTitle = [(PPTripEvent *)v11 destinationsBasedTitle];
    [(PPScoredEvent *)v11 setTitle:destinationsBasedTitle];
  }

  return v11;
}

@end