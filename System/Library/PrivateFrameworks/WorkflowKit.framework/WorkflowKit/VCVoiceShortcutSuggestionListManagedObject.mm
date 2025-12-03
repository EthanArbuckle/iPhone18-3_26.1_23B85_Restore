@interface VCVoiceShortcutSuggestionListManagedObject
- (id)descriptor;
@end

@implementation VCVoiceShortcutSuggestionListManagedObject

- (id)descriptor
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD0];
  v4 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v6 = [v4 setWithArray:v5];
  serializedSuggestions = [(VCVoiceShortcutSuggestionListManagedObject *)self serializedSuggestions];
  v8 = [v3 unarchivedObjectOfClasses:v6 fromData:serializedSuggestions error:0];

  v9 = [WFShortcutSuggestionsDescriptor alloc];
  associatedAppBundleIdentifier = [(VCVoiceShortcutSuggestionListManagedObject *)self associatedAppBundleIdentifier];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [(WFShortcutSuggestionsDescriptor *)v9 initWithIdentifier:associatedAppBundleIdentifier suggestions:v11 availability:[(VCVoiceShortcutSuggestionListManagedObject *)self shortcutAvailabilityOptions]];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end