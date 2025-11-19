@interface TTSRuleReplacement
- (NSString)identifier;
- (TTSRuleset)ruleset;
- (unint64_t)effectiveIndex;
@end

@implementation TTSRuleReplacement

- (unint64_t)effectiveIndex
{
  v6 = objc_msgSend_group(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_group(self, v7, v8, v9, v10);
    v16 = objc_msgSend_endIndex(v11, v12, v13, v14, v15);

    return v16;
  }

  else
  {

    return MEMORY[0x1EEE66B58](self, sel_index, v8, v9, v10);
  }
}

- (NSString)identifier
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_ruleset(self, a2, v2, v3, v4);
  v12 = objc_msgSend_identifier(v7, v8, v9, v10, v11);
  v13 = MEMORY[0x1E696AD98];
  v18 = objc_msgSend_originalRulesetIndex(self, v14, v15, v16, v17);
  v22 = objc_msgSend_numberWithUnsignedInt_(v13, v19, v18, v20, v21);
  v26 = objc_msgSend_stringWithFormat_(v6, v23, @"%@_%@", v24, v25, v12, v22);

  return v26;
}

- (TTSRuleset)ruleset
{
  WeakRetained = objc_loadWeakRetained(&self->_ruleset);

  return WeakRetained;
}

@end