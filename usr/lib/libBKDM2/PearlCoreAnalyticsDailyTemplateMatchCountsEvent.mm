@interface PearlCoreAnalyticsDailyTemplateMatchCountsEvent
- (PearlCoreAnalyticsDailyTemplateMatchCountsEvent)initWithTemplateInfo:(id)a3;
- (void)reset;
- (void)setTemplateInfo:(id)a3;
@end

@implementation PearlCoreAnalyticsDailyTemplateMatchCountsEvent

- (PearlCoreAnalyticsDailyTemplateMatchCountsEvent)initWithTemplateInfo:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PearlCoreAnalyticsDailyTemplateMatchCountsEvent;
  v5 = [(PearlCoreAnalyticsEvent *)&v10 initWithName:@"com.apple.biometrickit.pearl.dailyTemplateMatchCounts"];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x29EDBFD98];
    v8 = *(&v5->super.super.super.isa + v7);
    *(&v5->super.super.super.isa + v7) = &unk_2A1E03A90;

    [(PearlCoreAnalyticsDailyTemplateMatchCountsEvent *)v6 setTemplateInfo:v4];
  }

  return v6;
}

- (void)reset
{
  v72.receiver = self;
  v72.super_class = PearlCoreAnalyticsDailyTemplateMatchCountsEvent;
  [(PearlCoreAnalyticsEvent *)&v72 reset];
  enrolledIdentityCount = self->_enrolledIdentityCount;
  self->_enrolledIdentityCount = &unk_2A1E037C8;

  enrolledTemplateCount = self->_enrolledTemplateCount;
  self->_enrolledTemplateCount = &unk_2A1E037C8;

  enrolledTemplateCountType0 = self->_enrolledTemplateCountType0;
  self->_enrolledTemplateCountType0 = &unk_2A1E037C8;

  enrolledTemplateCountType0NoGlasses = self->_enrolledTemplateCountType0NoGlasses;
  self->_enrolledTemplateCountType0NoGlasses = &unk_2A1E037C8;

  enrolledTemplateCountType0WithGlasses = self->_enrolledTemplateCountType0WithGlasses;
  self->_enrolledTemplateCountType0WithGlasses = &unk_2A1E037C8;

  enrolledTemplateCountType0Unknown = self->_enrolledTemplateCountType0Unknown;
  self->_enrolledTemplateCountType0Unknown = &unk_2A1E037C8;

  templateType1Enrolled = self->_templateType1Enrolled;
  v10 = MEMORY[0x29EDB8EA8];
  self->_templateType1Enrolled = MEMORY[0x29EDB8EA8];

  enrolledTemplateCountType1 = self->_enrolledTemplateCountType1;
  self->_enrolledTemplateCountType1 = &unk_2A1E037C8;

  enrolledTemplateCountType1NoGlasses = self->_enrolledTemplateCountType1NoGlasses;
  self->_enrolledTemplateCountType1NoGlasses = &unk_2A1E037C8;

  enrolledTemplateCountType1WithGlasses = self->_enrolledTemplateCountType1WithGlasses;
  self->_enrolledTemplateCountType1WithGlasses = &unk_2A1E037C8;

  enrolledTemplateCountType1Unknown = self->_enrolledTemplateCountType1Unknown;
  self->_enrolledTemplateCountType1Unknown = &unk_2A1E037C8;

  identity0EnrolledTemplateCountType0 = self->_identity0EnrolledTemplateCountType0;
  self->_identity0EnrolledTemplateCountType0 = &unk_2A1E037C8;

  identity0EnrolledTemplateCountType0NoGlasses = self->_identity0EnrolledTemplateCountType0NoGlasses;
  self->_identity0EnrolledTemplateCountType0NoGlasses = &unk_2A1E037C8;

  identity0EnrolledTemplateCountType0WithGlasses = self->_identity0EnrolledTemplateCountType0WithGlasses;
  self->_identity0EnrolledTemplateCountType0WithGlasses = &unk_2A1E037C8;

  identity0EnrolledTemplateCountType0Unknown = self->_identity0EnrolledTemplateCountType0Unknown;
  self->_identity0EnrolledTemplateCountType0Unknown = &unk_2A1E037C8;

  identity0TemplateType1Enrolled = self->_identity0TemplateType1Enrolled;
  self->_identity0TemplateType1Enrolled = v10;

  identity0EnrolledTemplateCountType1 = self->_identity0EnrolledTemplateCountType1;
  self->_identity0EnrolledTemplateCountType1 = &unk_2A1E037C8;

  identity0EnrolledTemplateCountType1NoGlasses = self->_identity0EnrolledTemplateCountType1NoGlasses;
  self->_identity0EnrolledTemplateCountType1NoGlasses = &unk_2A1E037C8;

  identity0EnrolledTemplateCountType1WithGlasses = self->_identity0EnrolledTemplateCountType1WithGlasses;
  self->_identity0EnrolledTemplateCountType1WithGlasses = &unk_2A1E037C8;

  identity0EnrolledTemplateCountType1Unknown = self->_identity0EnrolledTemplateCountType1Unknown;
  self->_identity0EnrolledTemplateCountType1Unknown = &unk_2A1E037C8;

  identity1EnrolledTemplateCountType0 = self->_identity1EnrolledTemplateCountType0;
  self->_identity1EnrolledTemplateCountType0 = &unk_2A1E037C8;

  identity1EnrolledTemplateCountType0NoGlasses = self->_identity1EnrolledTemplateCountType0NoGlasses;
  self->_identity1EnrolledTemplateCountType0NoGlasses = &unk_2A1E037C8;

  identity1EnrolledTemplateCountType0WithGlasses = self->_identity1EnrolledTemplateCountType0WithGlasses;
  self->_identity1EnrolledTemplateCountType0WithGlasses = &unk_2A1E037C8;

  identity1EnrolledTemplateCountType0Unknown = self->_identity1EnrolledTemplateCountType0Unknown;
  self->_identity1EnrolledTemplateCountType0Unknown = &unk_2A1E037C8;

  identity1TemplateType1Enrolled = self->_identity1TemplateType1Enrolled;
  self->_identity1TemplateType1Enrolled = &unk_2A1E037C8;

  identity1EnrolledTemplateCountType1 = self->_identity1EnrolledTemplateCountType1;
  self->_identity1EnrolledTemplateCountType1 = &unk_2A1E037C8;

  identity1EnrolledTemplateCountType1NoGlasses = self->_identity1EnrolledTemplateCountType1NoGlasses;
  self->_identity1EnrolledTemplateCountType1NoGlasses = &unk_2A1E037C8;

  identity1EnrolledTemplateCountType1WithGlasses = self->_identity1EnrolledTemplateCountType1WithGlasses;
  self->_identity1EnrolledTemplateCountType1WithGlasses = &unk_2A1E037C8;

  identity1EnrolledTemplateCountType1Unknown = self->_identity1EnrolledTemplateCountType1Unknown;
  self->_identity1EnrolledTemplateCountType1Unknown = &unk_2A1E037C8;

  matchingTemplateCountType0 = self->_matchingTemplateCountType0;
  self->_matchingTemplateCountType0 = &unk_2A1E037C8;

  matchingTemplateCountType0WithGlasses = self->_matchingTemplateCountType0WithGlasses;
  self->_matchingTemplateCountType0WithGlasses = &unk_2A1E037C8;

  matchingTemplateCountType0NoGlasses = self->_matchingTemplateCountType0NoGlasses;
  self->_matchingTemplateCountType0NoGlasses = &unk_2A1E037C8;

  matchingTemplateCountType0Unknown = self->_matchingTemplateCountType0Unknown;
  self->_matchingTemplateCountType0Unknown = &unk_2A1E037C8;

  matchingTemplateCountType1 = self->_matchingTemplateCountType1;
  self->_matchingTemplateCountType1 = &unk_2A1E037C8;

  matchingTemplateCountType1WithGlasses = self->_matchingTemplateCountType1WithGlasses;
  self->_matchingTemplateCountType1WithGlasses = &unk_2A1E037C8;

  matchingTemplateCountType1NoGlasses = self->_matchingTemplateCountType1NoGlasses;
  self->_matchingTemplateCountType1NoGlasses = &unk_2A1E037C8;

  matchingTemplateCountType1Unknown = self->_matchingTemplateCountType1Unknown;
  self->_matchingTemplateCountType1Unknown = &unk_2A1E037C8;

  matchingTemplateCountType1MainTemplate = self->_matchingTemplateCountType1MainTemplate;
  self->_matchingTemplateCountType1MainTemplate = &unk_2A1E037C8;

  identity0MatchingTemplateCountType0 = self->_identity0MatchingTemplateCountType0;
  self->_identity0MatchingTemplateCountType0 = &unk_2A1E037C8;

  identity0MatchingTemplateCountType0WithGlasses = self->_identity0MatchingTemplateCountType0WithGlasses;
  self->_identity0MatchingTemplateCountType0WithGlasses = &unk_2A1E037C8;

  identity0MatchingTemplateCountType0NoGlasses = self->_identity0MatchingTemplateCountType0NoGlasses;
  self->_identity0MatchingTemplateCountType0NoGlasses = &unk_2A1E037C8;

  identity0MatchingTemplateCountType0Unknown = self->_identity0MatchingTemplateCountType0Unknown;
  self->_identity0MatchingTemplateCountType0Unknown = &unk_2A1E037C8;

  identity0MatchingTemplateCountType1 = self->_identity0MatchingTemplateCountType1;
  self->_identity0MatchingTemplateCountType1 = &unk_2A1E037C8;

  identity0MatchingTemplateCountType1WithGlasses = self->_identity0MatchingTemplateCountType1WithGlasses;
  self->_identity0MatchingTemplateCountType1WithGlasses = &unk_2A1E037C8;

  identity0MatchingTemplateCountType1NoGlasses = self->_identity0MatchingTemplateCountType1NoGlasses;
  self->_identity0MatchingTemplateCountType1NoGlasses = &unk_2A1E037C8;

  identity0MatchingTemplateCountType1Unknown = self->_identity0MatchingTemplateCountType1Unknown;
  self->_identity0MatchingTemplateCountType1Unknown = &unk_2A1E037C8;

  identity0MatchingTemplateCountType1MainTemplate = self->_identity0MatchingTemplateCountType1MainTemplate;
  self->_identity0MatchingTemplateCountType1MainTemplate = &unk_2A1E037C8;

  identity1MatchingTemplateCountType0 = self->_identity1MatchingTemplateCountType0;
  self->_identity1MatchingTemplateCountType0 = &unk_2A1E037C8;

  identity1MatchingTemplateCountType0WithGlasses = self->_identity1MatchingTemplateCountType0WithGlasses;
  self->_identity1MatchingTemplateCountType0WithGlasses = &unk_2A1E037C8;

  identity1MatchingTemplateCountType0NoGlasses = self->_identity1MatchingTemplateCountType0NoGlasses;
  self->_identity1MatchingTemplateCountType0NoGlasses = &unk_2A1E037C8;

  identity1MatchingTemplateCountType0Unknown = self->_identity1MatchingTemplateCountType0Unknown;
  self->_identity1MatchingTemplateCountType0Unknown = &unk_2A1E037C8;

  identity1MatchingTemplateCountType1 = self->_identity1MatchingTemplateCountType1;
  self->_identity1MatchingTemplateCountType1 = &unk_2A1E037C8;

  identity1MatchingTemplateCountType1WithGlasses = self->_identity1MatchingTemplateCountType1WithGlasses;
  self->_identity1MatchingTemplateCountType1WithGlasses = &unk_2A1E037C8;

  identity1MatchingTemplateCountType1NoGlasses = self->_identity1MatchingTemplateCountType1NoGlasses;
  self->_identity1MatchingTemplateCountType1NoGlasses = &unk_2A1E037C8;

  identity1MatchingTemplateCountType1Unknown = self->_identity1MatchingTemplateCountType1Unknown;
  self->_identity1MatchingTemplateCountType1Unknown = &unk_2A1E037C8;

  identity1MatchingTemplateCountType1MainTemplate = self->_identity1MatchingTemplateCountType1MainTemplate;
  self->_identity1MatchingTemplateCountType1MainTemplate = &unk_2A1E037C8;

  identity0BaseTemplateFeatureCountType0 = self->_identity0BaseTemplateFeatureCountType0;
  self->_identity0BaseTemplateFeatureCountType0 = &unk_2A1E037C8;

  identity0OnlineUpdateTemplateFeatureCountType0 = self->_identity0OnlineUpdateTemplateFeatureCountType0;
  self->_identity0OnlineUpdateTemplateFeatureCountType0 = &unk_2A1E037C8;

  identity0PasscodeUpdateTemplateFeatureCountType0 = self->_identity0PasscodeUpdateTemplateFeatureCountType0;
  self->_identity0PasscodeUpdateTemplateFeatureCountType0 = &unk_2A1E037C8;

  identity0BaseTemplateFeatureCountType1 = self->_identity0BaseTemplateFeatureCountType1;
  self->_identity0BaseTemplateFeatureCountType1 = &unk_2A1E037C8;

  identity0OnlineUpdateTemplateFeatureCountType1 = self->_identity0OnlineUpdateTemplateFeatureCountType1;
  self->_identity0OnlineUpdateTemplateFeatureCountType1 = &unk_2A1E037C8;

  identity0PasscodeUpdateTemplateFeatureCountType1 = self->_identity0PasscodeUpdateTemplateFeatureCountType1;
  self->_identity0PasscodeUpdateTemplateFeatureCountType1 = &unk_2A1E037C8;

  identity1BaseTemplateFeatureCountType0 = self->_identity1BaseTemplateFeatureCountType0;
  self->_identity1BaseTemplateFeatureCountType0 = &unk_2A1E037C8;

  identity1OnlineUpdateTemplateFeatureCountType0 = self->_identity1OnlineUpdateTemplateFeatureCountType0;
  self->_identity1OnlineUpdateTemplateFeatureCountType0 = &unk_2A1E037C8;

  identity1PasscodeUpdateTemplateFeatureCountType0 = self->_identity1PasscodeUpdateTemplateFeatureCountType0;
  self->_identity1PasscodeUpdateTemplateFeatureCountType0 = &unk_2A1E037C8;

  identity1BaseTemplateFeatureCountType1 = self->_identity1BaseTemplateFeatureCountType1;
  self->_identity1BaseTemplateFeatureCountType1 = &unk_2A1E037C8;

  identity1OnlineUpdateTemplateFeatureCountType1 = self->_identity1OnlineUpdateTemplateFeatureCountType1;
  self->_identity1OnlineUpdateTemplateFeatureCountType1 = &unk_2A1E037C8;

  identity1PasscodeUpdateTemplateFeatureCountType1 = self->_identity1PasscodeUpdateTemplateFeatureCountType1;
  self->_identity1PasscodeUpdateTemplateFeatureCountType1 = &unk_2A1E037C8;
}

- (void)setTemplateInfo:(id)a3
{
  v211 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDBA070];
  v6 = [v4 count];
  v7 = v5;
  v8 = v4;
  v9 = [v7 numberWithUnsignedInteger:v6];
  enrolledIdentityCount = self->_enrolledIdentityCount;
  self->_enrolledIdentityCount = v9;

  if (![v4 count])
  {
    goto LABEL_76;
  }

  v11 = 0;
  v203 = 0;
  v12 = MEMORY[0x29EDCA988];
  v181 = v4;
  do
  {
    if (__osLog)
    {
      v13 = __osLog;
    }

    else
    {
      v13 = v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v203;
      _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "PearlCoreAnalyticsDailyTemplateMatchCountsEvent setTemplateInfo: identityIndex: %d\n", buf, 8u);
    }

    v14 = [v8 objectAtIndex:v11];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(PearlCoreAnalyticsDailyTemplateMatchCountsEvent *)v14 setTemplateInfo:buf];
      matchingTemplateCountType1MainTemplate = *buf;
      goto LABEL_85;
    }

    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    obj = v14;
    v204 = [(NSNumber *)obj countByEnumeratingWithState:&v205 objects:v209 count:16];
    if (!v204)
    {
      v201 = 0;
      v118 = v203;
      v182 = v203;
      goto LABEL_63;
    }

    v201 = 0;
    v202 = *v206;
    v182 = v203;
    v183 = 0xFFFF;
    while (2)
    {
      for (i = 0; i != v204; ++i)
      {
        if (*v206 != v202)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v205 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [PearlCoreAnalyticsDailyTemplateMatchCountsEvent setTemplateInfo:];
LABEL_84:
          matchingTemplateCountType1MainTemplate = obj;

          v8 = v181;
          goto LABEL_85;
        }

        if ([v16 length] != 46)
        {
          [PearlCoreAnalyticsDailyTemplateMatchCountsEvent setTemplateInfo:];
          goto LABEL_84;
        }

        v17 = [v16 bytes];
        if (!v17)
        {
          [PearlCoreAnalyticsDailyTemplateMatchCountsEvent setTemplateInfo:];
          goto LABEL_84;
        }

        if (!*v17)
        {
          [PearlCoreAnalyticsDailyTemplateMatchCountsEvent setTemplateInfo:];
          goto LABEL_84;
        }

        v18 = *(v17 + 38);
        v19 = *(v17 + 37);
        if (v18 == 1)
        {
          if (v19 != 1)
          {
            if (!*(v17 + 37))
            {
              v33 = 0;
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = 0;
              v37 = 0;
              v32 = 0;
              v26 = *(v17 + 33);
              v34 = *(v17 + 21);
              v35 = 0.0;
              v36 = *(v17 + 29);
              v31 = 1;
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          v21 = *(v17 + 33);
          if ((v201 & 1) == 0)
          {
            v33 = 0;
            v20 = 0;
            v22 = 0;
            v23 = 0;
            v36 = 0;
            v26 = 0;
            v27 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v37 = 0;
            v35 = *(v17 + 21);
            v34 = 0.0;
            v25 = *(v17 + 29);
            v19 = 1;
            v24 = *(v17 + 33);
            v28 = 1;
            v32 = 1;
            v183 = 1;
            goto LABEL_40;
          }

          v33 = 0;
          v20 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v36 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v37 = 0;
          v32 = 0;
          v34 = 0.0;
          v19 = 1;
          v28 = 1;
        }

        else if (v18)
        {
          if (v19 != 1)
          {
            if (!*(v17 + 37))
            {
              v33 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v31 = 0;
              v37 = 0;
              v32 = 0;
              v20 = *(v17 + 33);
              v34 = *(v17 + 21);
              v35 = 0.0;
              v36 = *(v17 + 29);
              v30 = 1;
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          v23 = *(v17 + 33);
          if ((v201 & 1) == 0)
          {
            v33 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v36 = 0;
            v26 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v37 = 0;
            v35 = *(v17 + 21);
            v34 = 0.0;
            v25 = *(v17 + 29);
            v19 = 1;
            v24 = *(v17 + 33);
            v27 = 1;
            v32 = 1;
            v183 = *(v17 + 38);
            goto LABEL_40;
          }

          v33 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v24 = 0;
          v36 = 0;
          v25 = 0;
          v26 = 0;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v37 = 0;
          v32 = 0;
          v34 = 0.0;
          v19 = 1;
          v27 = 1;
        }

        else
        {
          if (v19 != 1)
          {
            if (!*(v17 + 37))
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = 0;
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = *(v17 + 33);
              v34 = *(v17 + 21);
              v35 = 0.0;
              v36 = *(v17 + 29);
              v37 = 1;
              goto LABEL_41;
            }

LABEL_29:
            v33 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v36 = 0;
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v37 = 0;
            v32 = 0;
            v34 = 0.0;
            v35 = 0.0;
            goto LABEL_41;
          }

          v22 = *(v17 + 33);
          if ((v201 & 1) == 0)
          {
            v33 = 0;
            v20 = 0;
            v21 = 0;
            v23 = 0;
            v36 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v30 = 0;
            v31 = 0;
            v37 = 0;
            v183 = 0;
            v35 = *(v17 + 21);
            v34 = 0.0;
            v25 = *(v17 + 29);
            v19 = 1;
            v24 = *(v17 + 33);
            v29 = 1;
            v32 = 1;
            goto LABEL_40;
          }

          v33 = 0;
          v20 = 0;
          v21 = 0;
          v23 = 0;
          v24 = 0;
          v36 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v30 = 0;
          v31 = 0;
          v37 = 0;
          v32 = 0;
          v34 = 0.0;
          v19 = 1;
          v29 = 1;
        }

        v35 = 0.0;
LABEL_40:
        v201 = 1;
LABEL_41:
        if (v203 == 1)
        {
          if (v19 == 1)
          {
            v200 = v35;
            v185 = v24;
            v187 = v25;
            v191 = v21;
            v195 = v23;
            v96 = v22;
            v97 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1NoGlasses, "unsignedIntValue", v34) + v29}];
            identity1EnrolledTemplateCountType1NoGlasses = self->_identity1EnrolledTemplateCountType1NoGlasses;
            self->_identity1EnrolledTemplateCountType1NoGlasses = v97;

            v99 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1WithGlasses, "unsignedIntValue") + v28}];
            identity1EnrolledTemplateCountType1WithGlasses = self->_identity1EnrolledTemplateCountType1WithGlasses;
            self->_identity1EnrolledTemplateCountType1WithGlasses = v99;

            v101 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1Unknown, "unsignedIntValue") + v27}];
            identity1EnrolledTemplateCountType1Unknown = self->_identity1EnrolledTemplateCountType1Unknown;
            self->_identity1EnrolledTemplateCountType1Unknown = v101;

            v103 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1NoGlasses, "unsignedIntValue") + v96}];
            identity1MatchingTemplateCountType1NoGlasses = self->_identity1MatchingTemplateCountType1NoGlasses;
            self->_identity1MatchingTemplateCountType1NoGlasses = v103;

            v105 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1WithGlasses, "unsignedIntValue") + v191}];
            identity1MatchingTemplateCountType1WithGlasses = self->_identity1MatchingTemplateCountType1WithGlasses;
            self->_identity1MatchingTemplateCountType1WithGlasses = v105;

            v107 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1Unknown, "unsignedIntValue") + v195}];
            identity1MatchingTemplateCountType1Unknown = self->_identity1MatchingTemplateCountType1Unknown;
            self->_identity1MatchingTemplateCountType1Unknown = v107;

            if (!v32)
            {
              continue;
            }

            v109 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v183];
            identity1Type1MainTemplateHasGlasses = self->_identity1Type1MainTemplateHasGlasses;
            self->_identity1Type1MainTemplateHasGlasses = v109;

            v111 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v185];
            identity1MatchingTemplateCountType1MainTemplate = self->_identity1MatchingTemplateCountType1MainTemplate;
            self->_identity1MatchingTemplateCountType1MainTemplate = v111;

            v113 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:LODWORD(v200)];
            identity1BaseTemplateFeatureCountType1 = self->_identity1BaseTemplateFeatureCountType1;
            self->_identity1BaseTemplateFeatureCountType1 = v113;

            v115 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:HIDWORD(v200)];
            identity1OnlineUpdateTemplateFeatureCountType1 = self->_identity1OnlineUpdateTemplateFeatureCountType1;
            self->_identity1OnlineUpdateTemplateFeatureCountType1 = v115;

            v55 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v187];
            v56 = 688;
          }

          else
          {
            if (v19)
            {
              continue;
            }

            v189 = v20;
            v193 = v36;
            v198 = v34;
            v57 = v26;
            v58 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0NoGlasses, "unsignedIntValue") + v37}];
            identity1EnrolledTemplateCountType0NoGlasses = self->_identity1EnrolledTemplateCountType0NoGlasses;
            self->_identity1EnrolledTemplateCountType0NoGlasses = v58;

            v60 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0WithGlasses, "unsignedIntValue") + v31}];
            identity1EnrolledTemplateCountType0WithGlasses = self->_identity1EnrolledTemplateCountType0WithGlasses;
            self->_identity1EnrolledTemplateCountType0WithGlasses = v60;

            v62 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0Unknown, "unsignedIntValue") + v30}];
            identity1EnrolledTemplateCountType0Unknown = self->_identity1EnrolledTemplateCountType0Unknown;
            self->_identity1EnrolledTemplateCountType0Unknown = v62;

            v64 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0NoGlasses, "unsignedIntValue") + v33}];
            identity1MatchingTemplateCountType0NoGlasses = self->_identity1MatchingTemplateCountType0NoGlasses;
            self->_identity1MatchingTemplateCountType0NoGlasses = v64;

            v66 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0WithGlasses, "unsignedIntValue") + v57}];
            identity1MatchingTemplateCountType0WithGlasses = self->_identity1MatchingTemplateCountType0WithGlasses;
            self->_identity1MatchingTemplateCountType0WithGlasses = v66;

            v68 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0Unknown, "unsignedIntValue") + v189}];
            identity1MatchingTemplateCountType0Unknown = self->_identity1MatchingTemplateCountType0Unknown;
            self->_identity1MatchingTemplateCountType0Unknown = v68;

            v70 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:LODWORD(v198)];
            identity1BaseTemplateFeatureCountType0 = self->_identity1BaseTemplateFeatureCountType0;
            self->_identity1BaseTemplateFeatureCountType0 = v70;

            v72 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:HIDWORD(v198)];
            identity1OnlineUpdateTemplateFeatureCountType0 = self->_identity1OnlineUpdateTemplateFeatureCountType0;
            self->_identity1OnlineUpdateTemplateFeatureCountType0 = v72;

            v55 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v193];
            v56 = 664;
          }

          goto LABEL_58;
        }

        if (!v203)
        {
          if (v19 == 1)
          {
            v199 = v35;
            v184 = v24;
            v186 = v25;
            v190 = v21;
            v194 = v23;
            v75 = v22;
            v76 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1NoGlasses, "unsignedIntValue", v34) + v29}];
            identity0EnrolledTemplateCountType1NoGlasses = self->_identity0EnrolledTemplateCountType1NoGlasses;
            self->_identity0EnrolledTemplateCountType1NoGlasses = v76;

            v78 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1WithGlasses, "unsignedIntValue") + v28}];
            identity0EnrolledTemplateCountType1WithGlasses = self->_identity0EnrolledTemplateCountType1WithGlasses;
            self->_identity0EnrolledTemplateCountType1WithGlasses = v78;

            v80 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1Unknown, "unsignedIntValue") + v27}];
            identity0EnrolledTemplateCountType1Unknown = self->_identity0EnrolledTemplateCountType1Unknown;
            self->_identity0EnrolledTemplateCountType1Unknown = v80;

            v82 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1NoGlasses, "unsignedIntValue") + v75}];
            identity0MatchingTemplateCountType1NoGlasses = self->_identity0MatchingTemplateCountType1NoGlasses;
            self->_identity0MatchingTemplateCountType1NoGlasses = v82;

            v84 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1WithGlasses, "unsignedIntValue") + v190}];
            identity0MatchingTemplateCountType1WithGlasses = self->_identity0MatchingTemplateCountType1WithGlasses;
            self->_identity0MatchingTemplateCountType1WithGlasses = v84;

            v86 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1Unknown, "unsignedIntValue") + v194}];
            identity0MatchingTemplateCountType1Unknown = self->_identity0MatchingTemplateCountType1Unknown;
            self->_identity0MatchingTemplateCountType1Unknown = v86;

            if (!v32)
            {
              continue;
            }

            v88 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v183];
            identity0Type1MainTemplateHasGlasses = self->_identity0Type1MainTemplateHasGlasses;
            self->_identity0Type1MainTemplateHasGlasses = v88;

            v90 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v184];
            identity0MatchingTemplateCountType1MainTemplate = self->_identity0MatchingTemplateCountType1MainTemplate;
            self->_identity0MatchingTemplateCountType1MainTemplate = v90;

            v92 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:LODWORD(v199)];
            identity0BaseTemplateFeatureCountType1 = self->_identity0BaseTemplateFeatureCountType1;
            self->_identity0BaseTemplateFeatureCountType1 = v92;

            v94 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:HIDWORD(v199)];
            identity0OnlineUpdateTemplateFeatureCountType1 = self->_identity0OnlineUpdateTemplateFeatureCountType1;
            self->_identity0OnlineUpdateTemplateFeatureCountType1 = v94;

            v55 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v186];
            v56 = 640;
          }

          else
          {
            if (v19)
            {
              continue;
            }

            v188 = v20;
            v192 = v36;
            v197 = v34;
            v38 = v26;
            v39 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0NoGlasses, "unsignedIntValue") + v37}];
            identity0EnrolledTemplateCountType0NoGlasses = self->_identity0EnrolledTemplateCountType0NoGlasses;
            self->_identity0EnrolledTemplateCountType0NoGlasses = v39;

            v41 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0WithGlasses, "unsignedIntValue") + v31}];
            identity0EnrolledTemplateCountType0WithGlasses = self->_identity0EnrolledTemplateCountType0WithGlasses;
            self->_identity0EnrolledTemplateCountType0WithGlasses = v41;

            v43 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0Unknown, "unsignedIntValue") + v30}];
            identity0EnrolledTemplateCountType0Unknown = self->_identity0EnrolledTemplateCountType0Unknown;
            self->_identity0EnrolledTemplateCountType0Unknown = v43;

            v45 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0NoGlasses, "unsignedIntValue") + v33}];
            identity0MatchingTemplateCountType0NoGlasses = self->_identity0MatchingTemplateCountType0NoGlasses;
            self->_identity0MatchingTemplateCountType0NoGlasses = v45;

            v47 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0WithGlasses, "unsignedIntValue") + v38}];
            identity0MatchingTemplateCountType0WithGlasses = self->_identity0MatchingTemplateCountType0WithGlasses;
            self->_identity0MatchingTemplateCountType0WithGlasses = v47;

            v49 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0Unknown, "unsignedIntValue") + v188}];
            identity0MatchingTemplateCountType0Unknown = self->_identity0MatchingTemplateCountType0Unknown;
            self->_identity0MatchingTemplateCountType0Unknown = v49;

            v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:LODWORD(v197)];
            identity0BaseTemplateFeatureCountType0 = self->_identity0BaseTemplateFeatureCountType0;
            self->_identity0BaseTemplateFeatureCountType0 = v51;

            v53 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:HIDWORD(v197)];
            identity0OnlineUpdateTemplateFeatureCountType0 = self->_identity0OnlineUpdateTemplateFeatureCountType0;
            self->_identity0OnlineUpdateTemplateFeatureCountType0 = v53;

            v55 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v192];
            v56 = 616;
          }

LABEL_58:
          v117 = *(&self->super.super.super.isa + v56);
          *(&self->super.super.super.isa + v56) = v55;

          continue;
        }

        if (__osLog)
        {
          v74 = __osLog;
        }

        else
        {
          v74 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v203;
          _os_log_impl(&dword_296CA4000, v74, OS_LOG_TYPE_ERROR, "Unexpected identity index: %d!\n", buf, 8u);
        }
      }

      v204 = [(NSNumber *)obj countByEnumeratingWithState:&v205 objects:v209 count:16, v34, v35];
      if (v204)
      {
        continue;
      }

      break;
    }

    v8 = v181;
    v118 = v203;
    v12 = MEMORY[0x29EDCA988];
LABEL_63:

    if (v118 == 1)
    {
      v129 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0Unknown, "unsignedIntValue")}];
      identity1EnrolledTemplateCountType0 = self->_identity1EnrolledTemplateCountType0;
      self->_identity1EnrolledTemplateCountType0 = v129;

      v131 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0Unknown, "unsignedIntValue")}];
      identity1MatchingTemplateCountType0 = self->_identity1MatchingTemplateCountType0;
      self->_identity1MatchingTemplateCountType0 = v131;

      v133 = [MEMORY[0x29EDBA070] numberWithBool:v201 & 1];
      identity1TemplateType1Enrolled = self->_identity1TemplateType1Enrolled;
      self->_identity1TemplateType1Enrolled = v133;

      if (v201)
      {
        v135 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1Unknown, "unsignedIntValue")}];
        identity1EnrolledTemplateCountType1 = self->_identity1EnrolledTemplateCountType1;
        self->_identity1EnrolledTemplateCountType1 = v135;

        v127 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1Unknown, "unsignedIntValue")}];
        v128 = 560;
LABEL_69:
        v137 = *(&self->super.super.super.isa + v128);
        *(&self->super.super.super.isa + v128) = v127;
      }
    }

    else if (v118)
    {
      if (__osLog)
      {
        v138 = __osLog;
      }

      else
      {
        v138 = v12;
      }

      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v182;
        _os_log_impl(&dword_296CA4000, v138, OS_LOG_TYPE_ERROR, "Unexpected identity index: %d!\n", buf, 8u);
      }
    }

    else
    {
      v119 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0Unknown, "unsignedIntValue")}];
      identity0EnrolledTemplateCountType0 = self->_identity0EnrolledTemplateCountType0;
      self->_identity0EnrolledTemplateCountType0 = v119;

      v121 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0Unknown, "unsignedIntValue")}];
      identity0MatchingTemplateCountType0 = self->_identity0MatchingTemplateCountType0;
      self->_identity0MatchingTemplateCountType0 = v121;

      v123 = [MEMORY[0x29EDBA070] numberWithBool:v201 & 1];
      identity0TemplateType1Enrolled = self->_identity0TemplateType1Enrolled;
      self->_identity0TemplateType1Enrolled = v123;

      if (v201)
      {
        v125 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1Unknown, "unsignedIntValue")}];
        identity0EnrolledTemplateCountType1 = self->_identity0EnrolledTemplateCountType1;
        self->_identity0EnrolledTemplateCountType1 = v125;

        v127 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1Unknown, "unsignedIntValue")}];
        v128 = 488;
        goto LABEL_69;
      }
    }

    v11 = ++v203;
  }

  while ([v8 count] > v203);
LABEL_76:
  v139 = v8;
  v140 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0, "unsignedIntValue")}];
  enrolledTemplateCountType0 = self->_enrolledTemplateCountType0;
  self->_enrolledTemplateCountType0 = v140;

  v142 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0NoGlasses, "unsignedIntValue")}];
  enrolledTemplateCountType0NoGlasses = self->_enrolledTemplateCountType0NoGlasses;
  self->_enrolledTemplateCountType0NoGlasses = v142;

  v144 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0WithGlasses, "unsignedIntValue")}];
  enrolledTemplateCountType0WithGlasses = self->_enrolledTemplateCountType0WithGlasses;
  self->_enrolledTemplateCountType0WithGlasses = v144;

  v146 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType0Unknown, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType0Unknown, "unsignedIntValue")}];
  enrolledTemplateCountType0Unknown = self->_enrolledTemplateCountType0Unknown;
  self->_enrolledTemplateCountType0Unknown = v146;

  v148 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1, "unsignedIntValue")}];
  enrolledTemplateCountType1 = self->_enrolledTemplateCountType1;
  self->_enrolledTemplateCountType1 = v148;

  v150 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1NoGlasses, "unsignedIntValue")}];
  enrolledTemplateCountType1NoGlasses = self->_enrolledTemplateCountType1NoGlasses;
  self->_enrolledTemplateCountType1NoGlasses = v150;

  v152 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1WithGlasses, "unsignedIntValue")}];
  enrolledTemplateCountType1WithGlasses = self->_enrolledTemplateCountType1WithGlasses;
  self->_enrolledTemplateCountType1WithGlasses = v152;

  v154 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1EnrolledTemplateCountType1Unknown, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0EnrolledTemplateCountType1Unknown, "unsignedIntValue")}];
  enrolledTemplateCountType1Unknown = self->_enrolledTemplateCountType1Unknown;
  self->_enrolledTemplateCountType1Unknown = v154;

  v156 = MEMORY[0x29EDBA070];
  v157 = [(NSNumber *)self->_identity0TemplateType1Enrolled BOOLValue]|| [(NSNumber *)self->_identity1TemplateType1Enrolled BOOLValue];
  v158 = [v156 numberWithInt:v157];
  templateType1Enrolled = self->_templateType1Enrolled;
  self->_templateType1Enrolled = v158;

  v160 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_enrolledTemplateCountType1, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_enrolledTemplateCountType0, "unsignedIntValue")}];
  enrolledTemplateCount = self->_enrolledTemplateCount;
  self->_enrolledTemplateCount = v160;

  v162 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0, "unsignedIntValue")}];
  matchingTemplateCountType0 = self->_matchingTemplateCountType0;
  self->_matchingTemplateCountType0 = v162;

  v164 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0NoGlasses, "unsignedIntValue")}];
  matchingTemplateCountType0NoGlasses = self->_matchingTemplateCountType0NoGlasses;
  self->_matchingTemplateCountType0NoGlasses = v164;

  v166 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0WithGlasses, "unsignedIntValue")}];
  matchingTemplateCountType0WithGlasses = self->_matchingTemplateCountType0WithGlasses;
  self->_matchingTemplateCountType0WithGlasses = v166;

  v168 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType0Unknown, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType0Unknown, "unsignedIntValue")}];
  matchingTemplateCountType0Unknown = self->_matchingTemplateCountType0Unknown;
  self->_matchingTemplateCountType0Unknown = v168;

  v170 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1, "unsignedIntValue")}];
  matchingTemplateCountType1 = self->_matchingTemplateCountType1;
  self->_matchingTemplateCountType1 = v170;

  v172 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1NoGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1NoGlasses, "unsignedIntValue")}];
  matchingTemplateCountType1NoGlasses = self->_matchingTemplateCountType1NoGlasses;
  self->_matchingTemplateCountType1NoGlasses = v172;

  v174 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1WithGlasses, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1WithGlasses, "unsignedIntValue")}];
  matchingTemplateCountType1WithGlasses = self->_matchingTemplateCountType1WithGlasses;
  self->_matchingTemplateCountType1WithGlasses = v174;

  v176 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity1MatchingTemplateCountType1Unknown, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1Unknown, "unsignedIntValue")}];
  matchingTemplateCountType1Unknown = self->_matchingTemplateCountType1Unknown;
  self->_matchingTemplateCountType1Unknown = v176;

  v178 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1MainTemplate, "unsignedIntValue") + -[NSNumber unsignedIntValue](self->_identity0MatchingTemplateCountType1MainTemplate, "unsignedIntValue")}];
  matchingTemplateCountType1MainTemplate = self->_matchingTemplateCountType1MainTemplate;
  self->_matchingTemplateCountType1MainTemplate = v178;
  v8 = v139;
LABEL_85:

  v180 = *MEMORY[0x29EDCA608];
}

- (void)setTemplateInfo:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v7 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v8 = 140;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, 0x30u);
  }

  *a2 = a1;
  v5 = *MEMORY[0x29EDCA608];
}

- (void)setTemplateInfo:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)setTemplateInfo:.cold.3()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)setTemplateInfo:.cold.4()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)setTemplateInfo:.cold.5()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

@end