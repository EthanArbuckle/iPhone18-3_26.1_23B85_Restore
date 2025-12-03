@interface NSDateFormatter(HKSPSleep)
- (id)hksp_timeStringFromDate:()HKSPSleep designatorString:designatorIsBeforeTime:;
@end

@implementation NSDateFormatter(HKSPSleep)

- (id)hksp_timeStringFromDate:()HKSPSleep designatorString:designatorIsBeforeTime:
{
  v8 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__11;
  v31 = __Block_byref_object_dispose__11;
  v32 = &stru_287A719F0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = &unk_269AF2087;
  v26 = xmmword_269AE64C0;
  v9 = [self _attributedStringWithFieldsFromDate:v8];
  v10 = [v9 length];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__NSDateFormatter_HKSPSleep__hksp_timeStringFromDate_designatorString_designatorIsBeforeTime___block_invoke;
  v18[3] = &unk_279C76550;
  v20 = &v27;
  v11 = v9;
  v19 = v11;
  v21 = &v22;
  [v11 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v18}];
  *a4 = v28[5];
  *a5 = v23[4] == 0;
  v12 = [self stringFromDate:v8];
  v13 = v12;
  v14 = v23[4];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v12 stringByReplacingOccurrencesOfString:v28[5] withString:&stru_287A719F0 options:0 range:{v14, v23[5]}];

    v13 = v15;
  }

  v16 = [v13 hk_stringByReplacingSpacesWithString:&stru_287A719F0];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v27, 8);

  return v16;
}

@end