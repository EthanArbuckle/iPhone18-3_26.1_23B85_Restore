@interface PKPeerPaymentPreferencesUpdateRequest
- (PKPeerPaymentPreferencesUpdateRequest)initWithUpdatedPreferences:(id)preferences section:(int64_t)section;
- (id)description;
- (void)coalesceWithRequest:(id)request;
@end

@implementation PKPeerPaymentPreferencesUpdateRequest

- (PKPeerPaymentPreferencesUpdateRequest)initWithUpdatedPreferences:(id)preferences section:(int64_t)section
{
  preferencesCopy = preferences;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentPreferencesUpdateRequest;
  v8 = [(PKPeerPaymentPreferencesUpdateRequest *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    sections = v8->_sections;
    v8->_sections = v9;

    v11 = v8->_sections;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    [(NSMutableSet *)v11 addObject:v12];

    objc_storeStrong(&v8->_updatedPreferences, preferences);
  }

  return v8;
}

- (void)coalesceWithRequest:(id)request
{
  requestCopy = request;
  updatedPreferences = [requestCopy updatedPreferences];
  updatedPreferences = self->_updatedPreferences;
  self->_updatedPreferences = updatedPreferences;

  sections = self->_sections;
  sections = [requestCopy sections];

  [(NSMutableSet *)sections unionSet:sections];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"updatedPreferences: '%@'; ", self->_updatedPreferences];
  [v3 appendFormat:@">"];

  return v3;
}

@end