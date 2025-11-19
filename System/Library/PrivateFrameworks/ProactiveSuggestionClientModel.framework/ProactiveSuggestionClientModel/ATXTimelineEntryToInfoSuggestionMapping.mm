@interface ATXTimelineEntryToInfoSuggestionMapping
+ (id)entryMappingWithTimelineEntry:(id)a3 suggestionId:(id)a4 withSuggestionMappingReason:(int64_t)a5;
- (ATXTimelineEntryToInfoSuggestionMapping)initWithTimelineEntry:(id)a3 suggestionId:(id)a4 withSuggestionMappingReason:(int64_t)a5;
@end

@implementation ATXTimelineEntryToInfoSuggestionMapping

- (ATXTimelineEntryToInfoSuggestionMapping)initWithTimelineEntry:(id)a3 suggestionId:(id)a4 withSuggestionMappingReason:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = ATXTimelineEntryToInfoSuggestionMapping;
  v11 = [(ATXTimelineEntryToInfoSuggestionMapping *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timelineEntry, a3);
    v13 = [v10 copy];
    suggestionId = v12->_suggestionId;
    v12->_suggestionId = v13;

    v12->_suggestionMappingReason = a5;
  }

  return v12;
}

+ (id)entryMappingWithTimelineEntry:(id)a3 suggestionId:(id)a4 withSuggestionMappingReason:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithTimelineEntry:v9 suggestionId:v8 withSuggestionMappingReason:a5];

  return v10;
}

@end