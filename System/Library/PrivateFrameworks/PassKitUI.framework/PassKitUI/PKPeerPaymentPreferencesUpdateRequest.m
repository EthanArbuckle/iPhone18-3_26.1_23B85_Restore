@interface PKPeerPaymentPreferencesUpdateRequest
- (PKPeerPaymentPreferencesUpdateRequest)initWithUpdatedPreferences:(id)a3 section:(int64_t)a4;
- (id)description;
- (void)coalesceWithRequest:(id)a3;
@end

@implementation PKPeerPaymentPreferencesUpdateRequest

- (PKPeerPaymentPreferencesUpdateRequest)initWithUpdatedPreferences:(id)a3 section:(int64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentPreferencesUpdateRequest;
  v8 = [(PKPeerPaymentPreferencesUpdateRequest *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    sections = v8->_sections;
    v8->_sections = v9;

    v11 = v8->_sections;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableSet *)v11 addObject:v12];

    objc_storeStrong(&v8->_updatedPreferences, a3);
  }

  return v8;
}

- (void)coalesceWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 updatedPreferences];
  updatedPreferences = self->_updatedPreferences;
  self->_updatedPreferences = v5;

  sections = self->_sections;
  v8 = [v4 sections];

  [(NSMutableSet *)sections unionSet:v8];
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