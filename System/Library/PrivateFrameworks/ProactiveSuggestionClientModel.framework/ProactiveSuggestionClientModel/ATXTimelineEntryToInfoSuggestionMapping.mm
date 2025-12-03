@interface ATXTimelineEntryToInfoSuggestionMapping
+ (id)entryMappingWithTimelineEntry:(id)entry suggestionId:(id)id withSuggestionMappingReason:(int64_t)reason;
- (ATXTimelineEntryToInfoSuggestionMapping)initWithTimelineEntry:(id)entry suggestionId:(id)id withSuggestionMappingReason:(int64_t)reason;
@end

@implementation ATXTimelineEntryToInfoSuggestionMapping

- (ATXTimelineEntryToInfoSuggestionMapping)initWithTimelineEntry:(id)entry suggestionId:(id)id withSuggestionMappingReason:(int64_t)reason
{
  entryCopy = entry;
  idCopy = id;
  v16.receiver = self;
  v16.super_class = ATXTimelineEntryToInfoSuggestionMapping;
  v11 = [(ATXTimelineEntryToInfoSuggestionMapping *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timelineEntry, entry);
    v13 = [idCopy copy];
    suggestionId = v12->_suggestionId;
    v12->_suggestionId = v13;

    v12->_suggestionMappingReason = reason;
  }

  return v12;
}

+ (id)entryMappingWithTimelineEntry:(id)entry suggestionId:(id)id withSuggestionMappingReason:(int64_t)reason
{
  idCopy = id;
  entryCopy = entry;
  v10 = [[self alloc] initWithTimelineEntry:entryCopy suggestionId:idCopy withSuggestionMappingReason:reason];

  return v10;
}

@end