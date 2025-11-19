@interface PRSDirectivesManager
+ (void)initialize;
- (PRSDirectivesManager)init;
- (unint64_t)getDirectiveTypeFromString:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)getAllDirectivesArraysForTesting:(void *)a3;
- (void)processDirectives:(id)a3;
- (void)processResultSetValuesWithMap:(id)a3 serverFeatures:(id)a4;
@end

@implementation PRSDirectivesManager

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    v3 = sLocalRSFeatureNameToBundleFeatureMappings;
    sLocalRSFeatureNameToBundleFeatureMappings = &unk_1F55B7880;
  }
}

- (PRSDirectivesManager)init
{
  if (init_onceToken != -1)
  {
    [PRSDirectivesManager init];
  }

  return self;
}

uint64_t __28__PRSDirectivesManager_init__block_invoke()
{
  featuresInOrder = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  if (self->indexOfIdMapping >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      directive_id_mapping = self->directive_id_mapping;
      var3 = directive_id_mapping[v3].var3;
      if (var3)
      {
        free(var3);
        self->directive_id_mapping[v3].var3 = 0;
        directive_id_mapping = self->directive_id_mapping;
      }

      var0 = directive_id_mapping[v3].var2.var0;
      if (var0)
      {
        CFRelease(var0);
        self->directive_id_mapping[v3].var2.var0 = 0;
      }

      ++v4;
      ++v3;
    }

    while (v4 < self->indexOfIdMapping);
  }

  if (self->indexOfResultSetIdMapping >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      directive_resultset_id_mapping = self->directive_resultset_id_mapping;
      v11 = directive_resultset_id_mapping[v8].var3;
      if (v11)
      {
        free(v11);
        self->directive_resultset_id_mapping[v8].var3 = 0;
        directive_resultset_id_mapping = self->directive_resultset_id_mapping;
      }

      v12 = directive_resultset_id_mapping[v8].var2.var0;
      if (v12)
      {
        CFRelease(v12);
        self->directive_resultset_id_mapping[v8].var2.var0 = 0;
        directive_resultset_id_mapping = self->directive_resultset_id_mapping;
      }

      var4 = directive_resultset_id_mapping[v8].var4;
      if (var4)
      {
        free(var4);
        self->directive_resultset_id_mapping[v8].var4 = 0;
      }

      ++v9;
      ++v8;
    }

    while (v9 < self->indexOfResultSetIdMapping);
  }

  if (self->indexOfResultSetIdScoreMapping >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 40;
    do
    {
      directive_resultset_id_score_mapping = self->directive_resultset_id_score_mapping;
      v18 = directive_resultset_id_score_mapping[v14].var4;
      if (v18)
      {
        free(v18);
        *(&self->directive_resultset_id_mapping->var0 + v16) = 0;
        directive_resultset_id_score_mapping = self->directive_resultset_id_score_mapping;
      }

      v19 = directive_resultset_id_score_mapping[v14].var2.var0;
      if (v19)
      {
        CFRelease(v19);
        self->directive_resultset_id_score_mapping[v14].var2.var0 = 0;
        directive_resultset_id_score_mapping = self->directive_resultset_id_score_mapping;
      }

      v20 = directive_resultset_id_score_mapping[v14].var3;
      if (v20)
      {
        CFRelease(v20);
        self->directive_resultset_id_score_mapping[v14].var3 = 0;
        directive_resultset_id_score_mapping = self->directive_resultset_id_score_mapping;
      }

      var5 = directive_resultset_id_score_mapping[v14].var5;
      if (var5)
      {
        free(var5);
        self->directive_resultset_id_score_mapping[v14].var5 = 0;
      }

      ++v15;
      ++v14;
      v16 += 56;
    }

    while (v15 < self->indexOfResultSetIdScoreMapping);
  }

  indexOfQuantize = self->indexOfQuantize;
  if (indexOfQuantize >= 1)
  {
    v23 = 0;
    v24 = 16;
    do
    {
      v25 = *(&self->directive_quantize->var0 + v24);
      if (v25)
      {
        free(v25);
        *(&self->directive_quantize->var0 + v24) = 0;
        indexOfQuantize = self->indexOfQuantize;
      }

      ++v23;
      v24 += 32;
    }

    while (v23 < indexOfQuantize);
  }

  mapping = self->directive_local_resultset_id_values_mapping.mapping;
  if (mapping)
  {
    CFRelease(mapping);
  }

  v27 = self->directive_parsec_resultset_id_values_mapping.mapping;
  if (v27)
  {
    CFRelease(v27);
  }

  score_vector = self->directive_local_resultset_id_values_mapping.score_vector;
  if (score_vector)
  {
    free(score_vector);
  }

  v29 = self->directive_parsec_resultset_id_values_mapping.score_vector;
  if (v29)
  {
    free(v29);
  }

  PRSRankingBundleFeatureOrder = self->directive_local_resultset_id_values_mapping.PRSRankingBundleFeatureOrder;
  if (PRSRankingBundleFeatureOrder)
  {
    free(PRSRankingBundleFeatureOrder);
  }

  free(self->directive_replace_if);
  free(self->directive_as_is);
  free(self->directive_as_is_range);
  free(self->directive_id_mapping);
  free(self->directive_is_populated);
  free(self->directive_replace_then_min);
  free(self->directive_value_if_not_exist);
  free(self->directive_resultset_id_mapping);
  free(self->directive_resultset_id_score_mapping);
  free(self->directive_quantize);
  v31.receiver = self;
  v31.super_class = PRSDirectivesManager;
  [(PRSDirectivesManager *)&v31 dealloc];
}

- (unint64_t)getDirectiveTypeFromString:(id)a3
{
  v3 = getDirectiveTypeFromString__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [PRSDirectivesManager getDirectiveTypeFromString:];
  }

  v5 = [directiveStringToEnumMapping objectForKey:v4];

  v6 = [v5 integerValue];
  return v6;
}

void __51__PRSDirectivesManager_getDirectiveTypeFromString___block_invoke()
{
  v0 = directiveStringToEnumMapping;
  directiveStringToEnumMapping = &unk_1F55B78A8;
}

- (void)getAllDirectivesArraysForTesting:(void *)a3
{
  v3 = *&self->directive_replace_if;
  v4 = *&self->directive_value_if_not_exist;
  v5 = *&self->directive_id_mapping;
  v6 = *&self->directive_resultset_id_score_mapping;
  directive_quantize = self->directive_quantize;
  *a3 = *&self->directive_as_is;
  *(a3 + 1) = v3;
  *(a3 + 2) = v4;
  *(a3 + 3) = v5;
  *(a3 + 4) = v6;
  *(a3 + 10) = directive_quantize;
}

- (void)processDirectives:(id)a3
{
  v353 = *MEMORY[0x1E69E9840];
  v4 = a3;
  disabledFeatureIndices = self->disabledFeatureIndices;
  self->disabledFeatureIndices = 0;

  v6 = objc_opt_new();
  mapInflatedIndexToSize = self->mapInflatedIndexToSize;
  v311 = self;
  self->mapInflatedIndexToSize = v6;

  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v340 objects:v352 count:16];
  v10 = &sLocaleSpecificMatchingLock.__opaque[56];
  v11 = &sLocaleSpecificMatchingLock.__opaque[56];
  if (!v9)
  {
    v287 = 0;
    goto LABEL_176;
  }

  v12 = v9;
  v287 = 0;
  v288 = v8;
  v290 = *v341;
  do
  {
    v13 = 0;
    v289 = v12;
    do
    {
      if (*v341 != v290)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v340 + 1) + 8 * v13);
      v15 = [v14 objectForKey:@"names"];
      v16 = [v14 objectForKey:@"name"];
      v17 = v16;
      if (v15)
      {
        v18 = 1;
      }

      else
      {
        v18 = v16 == 0;
      }

      if (v18)
      {
        v295 = v15;
LABEL_12:
        v19 = 0;
        goto LABEL_18;
      }

      v20 = [v16 isEqualToString:@"output"];
      if (v20)
      {
        v19 = 1;
      }

      else
      {
        if (([v17 isEqualToString:@"model_weights"] & 1) == 0)
        {
          v351 = v17;
          v295 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v351 count:1];
          goto LABEL_12;
        }

        v19 = 0;
      }

      v295 = MEMORY[0x1E695E0F0];
LABEL_18:
      v21 = [v14 objectForKey:@"type"];
      v306 = [*(v10 + 343) count];
      v294 = v17;
      v297 = v21;
      if (v19)
      {
        if (v21)
        {
          [(PRSDirectivesManager *)v311 getDirectiveTypeFromString:v21];
        }

        v22 = 0x7FFFFFFFLL;
        v23 = v295;
      }

      else
      {
        v22 = *(v11 + 285) + [*(v10 + 343) count];
        v23 = v295;
        [*(v10 + 343) addObjectsFromArray:v295];
      }

      v293 = [v14 objectForKey:@"excluded_values"];
      v24 = [v14 objectForKey:@"values"];
      v25 = [v14 objectForKey:@"value"];
      v26 = v24;
      v296 = v25;
      if (v26)
      {
        v27 = 1;
      }

      else
      {
        v27 = v25 == 0;
      }

      v28 = v26;
      if (!v27)
      {
        v26 = v296;
      }

      v29 = v294;
      if (v297)
      {
        v292 = v26;
        v291 = v13;
        switch([(PRSDirectivesManager *)v311 getDirectiveTypeFromString:?])
        {
          case 0uLL:
            sizeOfAsIs = v311->sizeOfAsIs;
            indexOfAsIs = v311->indexOfAsIs;
            directive_as_is = v311->directive_as_is;
            if (sizeOfAsIs == indexOfAsIs)
            {
              v33 = sizeOfAsIs | (sizeOfAsIs >> 1) | ((sizeOfAsIs | (sizeOfAsIs >> 1)) >> 2);
              v34 = v33 | (v33 >> 4) | ((v33 | (v33 >> 4)) >> 8);
              v35 = (v34 | HIWORD(v34)) + 1;
              v311->sizeOfAsIs = v35;
              directive_as_is = malloc_type_realloc(directive_as_is, 16 * v35, 0x1000040451B5BE8uLL);
              v311->directive_as_is = directive_as_is;
              indexOfAsIs = v311->indexOfAsIs;
            }

            directive_as_is[indexOfAsIs].var0 = v22;
            v36 = [v23 count];
            v37 = v311->indexOfAsIs;
            v311->directive_as_is[v37].var1 = v36 + v22;
            v311->indexOfAsIs = v37 + 1;
            goto LABEL_164;
          case 1uLL:
            sizeOfAsIsRange = v311->sizeOfAsIsRange;
            if (sizeOfAsIsRange == v311->indexOfAsIsRange)
            {
              v118 = sizeOfAsIsRange | (sizeOfAsIsRange >> 1) | ((sizeOfAsIsRange | (sizeOfAsIsRange >> 1)) >> 2);
              v119 = v118 | (v118 >> 4) | ((v118 | (v118 >> 4)) >> 8);
              v120 = (v119 | HIWORD(v119)) + 1;
              v311->sizeOfAsIsRange = v120;
              v311->directive_as_is_range = malloc_type_realloc(v311->directive_as_is_range, 24 * v120, 0x1000040504FFAC1uLL);
            }

            v121 = [v292 objectForKey:@"count"];
            v311->directive_as_is_range[v311->indexOfAsIsRange].var0 = v22;
            v311->directive_as_is_range[v311->indexOfAsIsRange].var1 = [v295 count] + v22;
            v122 = [v121 integerValue];
            indexOfAsIsRange = v311->indexOfAsIsRange;
            v311->directive_as_is_range[indexOfAsIsRange].var2 = v122;
            v311->indexOfAsIsRange = indexOfAsIsRange + 1;

            v26 = v292;
            v23 = v295;
            v29 = v294;
            v11 = (&sLocaleSpecificMatchingLock + 64);
            break;
          case 2uLL:
            sizeOfReplaceIf = v311->sizeOfReplaceIf;
            indexOfReplaceIf = v311->indexOfReplaceIf;
            directive_replace_if = v311->directive_replace_if;
            if (sizeOfReplaceIf == indexOfReplaceIf)
            {
              v82 = sizeOfReplaceIf | (sizeOfReplaceIf >> 1) | ((sizeOfReplaceIf | (sizeOfReplaceIf >> 1)) >> 2);
              v83 = v82 | (v82 >> 4) | ((v82 | (v82 >> 4)) >> 8);
              v84 = (v83 | HIWORD(v83)) + 1;
              v311->sizeOfReplaceIf = v84;
              directive_replace_if = malloc_type_realloc(directive_replace_if, 40 * v84, 0x10000400A747E1EuLL);
              v311->directive_replace_if = directive_replace_if;
              indexOfReplaceIf = v311->indexOfReplaceIf;
            }

            directive_replace_if[indexOfReplaceIf].var0 = v22;
            v215 = [v295 count];
            v216 = v311->directive_replace_if;
            v217 = v311->indexOfReplaceIf;
            v216[v217].var1 = v215 + v22;
            if (v28)
            {
              v338 = 0u;
              v339 = 0u;
              v336 = 0u;
              v337 = 0u;
              v299 = [v28 allKeys];
              v218 = [v299 countByEnumeratingWithState:&v336 objects:v350 count:16];
              if (v218)
              {
                v219 = v218;
                v220 = 0;
                v221 = 0;
                objc = *v337;
                v309 = v28;
                do
                {
                  v222 = 0;
                  v223 = v220;
                  v224 = v221 << 32;
                  v225 = v221;
                  do
                  {
                    if (*v337 != objc)
                    {
                      objc_enumerationMutation(v299);
                    }

                    v226 = *(*(&v336 + 1) + 8 * v222);
                    [v226 floatValue];
                    v221 = v225 + 1;
                    v311->directive_replace_if[v311->indexOfReplaceIf].var2[v225] = v227;
                    v228 = [v309 objectForKey:v226];
                    [v228 floatValue];
                    v220 = v223 + 1;
                    v311->directive_replace_if[v311->indexOfReplaceIf].var3[v223] = v229;

                    ++v222;
                    v224 += 0x100000000;
                    ++v225;
                    ++v223;
                  }

                  while (v219 != v222);
                  v219 = [v299 countByEnumeratingWithState:&v336 objects:v350 count:16];
                }

                while (v219);
                v230 = v224 >> 32;
                v8 = v288;
                v12 = v289;
                v10 = (&sLocaleSpecificMatchingLock + 64);
                v11 = (&sLocaleSpecificMatchingLock + 64);
                v29 = v294;
                v28 = v309;
              }

              else
              {
                v230 = 0;
              }

              v216 = v311->directive_replace_if;
              v217 = v311->indexOfReplaceIf;
              v247 = v217;
            }

            else
            {
              v230 = 0;
              v247 = v217;
            }

            v216[v247].var4 = v230;
            v311->indexOfReplaceIf = v217 + 1;
            goto LABEL_163;
          case 3uLL:
            sizeOfReplaceThenMin = v311->sizeOfReplaceThenMin;
            indexOfReplaceThenMin = v311->indexOfReplaceThenMin;
            directive_replace_then_min = v311->directive_replace_then_min;
            if (sizeOfReplaceThenMin == indexOfReplaceThenMin)
            {
              v96 = sizeOfReplaceThenMin | (sizeOfReplaceThenMin >> 1) | ((sizeOfReplaceThenMin | (sizeOfReplaceThenMin >> 1)) >> 2);
              v97 = v96 | (v96 >> 4) | ((v96 | (v96 >> 4)) >> 8);
              v98 = (v97 | HIWORD(v97)) + 1;
              v311->sizeOfReplaceThenMin = v98;
              directive_replace_then_min = malloc_type_realloc(directive_replace_then_min, 72 * v98, 0x1000040811A10F9uLL);
              v311->directive_replace_then_min = directive_replace_then_min;
              indexOfReplaceThenMin = v311->indexOfReplaceThenMin;
            }

            directive_replace_then_min[indexOfReplaceThenMin].var0 = v22;
            v311->directive_replace_then_min[v311->indexOfReplaceThenMin].var1 = [v23 count] + v22;
            v231 = [v292 objectForKey:@"replace"];
            v232 = [v292 objectForKey:@"min"];
            v328 = 0u;
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            objd = [v231 allKeys];
            v233 = [objd countByEnumeratingWithState:&v328 objects:v348 count:16];
            if (v233)
            {
              v234 = v233;
              v286 = v232;
              v300 = v231;
              v310 = v28;
              v235 = 0;
              v236 = 0;
              v237 = *v329;
              do
              {
                v238 = 0;
                v239 = v235;
                v240 = v236 << 32;
                v241 = v236;
                do
                {
                  if (*v329 != v237)
                  {
                    objc_enumerationMutation(objd);
                  }

                  v242 = *(*(&v328 + 1) + 8 * v238);
                  [v242 floatValue];
                  v236 = v241 + 1;
                  v311->directive_replace_then_min[v311->indexOfReplaceThenMin].var2[v241] = v243;
                  v244 = [v310 objectForKey:v242];
                  [v244 floatValue];
                  v235 = v239 + 1;
                  v311->directive_replace_then_min[v311->indexOfReplaceThenMin].var3[v239] = v245;

                  ++v238;
                  v240 += 0x100000000;
                  ++v241;
                  ++v239;
                }

                while (v234 != v238);
                v234 = [objd countByEnumeratingWithState:&v328 objects:v348 count:16];
              }

              while (v234);
              v246 = v240 >> 32;
              v8 = v288;
              v10 = (&sLocaleSpecificMatchingLock + 64);
              v11 = (&sLocaleSpecificMatchingLock + 64);
              v28 = v310;
              v231 = v300;
              v232 = v286;
            }

            else
            {
              v246 = 0;
            }

            v311->directive_replace_then_min[v311->indexOfReplaceThenMin].var5 = v246;
            [v232 floatValue];
            v248 = v311->indexOfReplaceThenMin;
            v311->directive_replace_then_min[v248].var4 = v249;
            v311->indexOfReplaceThenMin = v248 + 1;

            v12 = v289;
            v29 = v294;
            goto LABEL_163;
          case 4uLL:
            sizeOfValueIfNotExist = v311->sizeOfValueIfNotExist;
            indexOfValueIfNotExist = v311->indexOfValueIfNotExist;
            directive_value_if_not_exist = v311->directive_value_if_not_exist;
            if (sizeOfValueIfNotExist == indexOfValueIfNotExist)
            {
              v54 = sizeOfValueIfNotExist | (sizeOfValueIfNotExist >> 1) | ((sizeOfValueIfNotExist | (sizeOfValueIfNotExist >> 1)) >> 2);
              v55 = v54 | (v54 >> 4) | ((v54 | (v54 >> 4)) >> 8);
              v56 = (v55 | HIWORD(v55)) + 1;
              v311->sizeOfValueIfNotExist = v56;
              directive_value_if_not_exist = malloc_type_realloc(directive_value_if_not_exist, 24 * v56, 0x10000400CE834B2uLL);
              v311->directive_value_if_not_exist = directive_value_if_not_exist;
              indexOfValueIfNotExist = v311->indexOfValueIfNotExist;
            }

            directive_value_if_not_exist[indexOfValueIfNotExist].var0 = v22;
            v311->directive_value_if_not_exist[v311->indexOfValueIfNotExist].var1 = [v23 count] + v22;
            [v296 floatValue];
            v213 = v311->indexOfValueIfNotExist;
            v23 = v295;
            v311->directive_value_if_not_exist[v213].var2 = v214;
            v311->indexOfValueIfNotExist = v213 + 1;
            goto LABEL_164;
          case 5uLL:
            sizeOfIsPopulated = v311->sizeOfIsPopulated;
            indexOfIsPopulated = v311->indexOfIsPopulated;
            directive_is_populated = v311->directive_is_populated;
            if (sizeOfIsPopulated == indexOfIsPopulated)
            {
              v127 = sizeOfIsPopulated | (sizeOfIsPopulated >> 1) | ((sizeOfIsPopulated | (sizeOfIsPopulated >> 1)) >> 2);
              v128 = v127 | (v127 >> 4) | ((v127 | (v127 >> 4)) >> 8);
              v129 = (v128 | HIWORD(v128)) + 1;
              v311->sizeOfIsPopulated = v129;
              directive_is_populated = malloc_type_realloc(directive_is_populated, v129 << 6, 0x1000040FA0F61DDuLL);
              v311->directive_is_populated = directive_is_populated;
              indexOfIsPopulated = v311->indexOfIsPopulated;
            }

            directive_is_populated[indexOfIsPopulated].var0 = v22;
            v130 = [v23 count];
            v131 = v311->directive_is_populated;
            v132 = v311->indexOfIsPopulated;
            v133 = v132;
            v131[v132].var1 = v130 + v22;
            if (v28)
            {
              v334 = 0u;
              v335 = 0u;
              v332 = 0u;
              v333 = 0u;
              obja = [v28 allKeys];
              v134 = [obja countByEnumeratingWithState:&v332 objects:v349 count:16];
              if (v134)
              {
                v135 = v134;
                v308 = v28;
                v136 = 0;
                v137 = 0;
                v138 = *v333;
                do
                {
                  v139 = 0;
                  v140 = v136;
                  v141 = v137 << 32;
                  v142 = v137;
                  do
                  {
                    if (*v333 != v138)
                    {
                      objc_enumerationMutation(obja);
                    }

                    v143 = *(*(&v332 + 1) + 8 * v139);
                    v137 = v142 + 1;
                    v311->directive_is_populated[v311->indexOfIsPopulated].var2[v142] = [v143 BOOLValue];
                    v144 = [v308 objectForKey:v143];
                    [v144 floatValue];
                    v136 = v140 + 1;
                    v311->directive_is_populated[v311->indexOfIsPopulated].var3[v140] = v145;

                    ++v139;
                    v141 += 0x100000000;
                    ++v142;
                    ++v140;
                  }

                  while (v135 != v139);
                  v135 = [obja countByEnumeratingWithState:&v332 objects:v349 count:16];
                }

                while (v135);
                v146 = v141 >> 32;
                v8 = v288;
                v12 = v289;
                v10 = (&sLocaleSpecificMatchingLock + 64);
                v11 = (&sLocaleSpecificMatchingLock + 64);
                v29 = v294;
                v28 = v308;
              }

              else
              {
                v146 = 0;
              }

              v131 = v311->directive_is_populated;
              v132 = v311->indexOfIsPopulated;
              v133 = v132;
            }

            else
            {
              v146 = 0;
            }

            v131[v133].var4 = v146;
            v311->indexOfIsPopulated = v132 + 1;
            goto LABEL_163;
          case 6uLL:
            sizeOfIdMapping = v311->sizeOfIdMapping;
            indexOfIdMapping = v311->indexOfIdMapping;
            if (sizeOfIdMapping == indexOfIdMapping)
            {
              v168 = sizeOfIdMapping | (sizeOfIdMapping >> 1) | ((sizeOfIdMapping | (sizeOfIdMapping >> 1)) >> 2);
              v169 = v168 | (v168 >> 4) | ((v168 | (v168 >> 4)) >> 8);
              v170 = (v169 | HIWORD(v169)) + 1;
              v311->sizeOfIdMapping = v170;
              v311->directive_id_mapping = malloc_type_realloc(v311->directive_id_mapping, 48 * v170, 0x1072040C780C59AuLL);
              indexOfIdMapping = v311->indexOfIdMapping;
            }

            if (v28)
            {
              v311->directive_id_mapping[indexOfIdMapping].var0 = v22;
              v311->directive_id_mapping[v311->indexOfIdMapping].var1 = [v28 count] + v22;
              *(v11 + 285) = [v28 count] + *(v11 + 285) - 1;
              v171 = [v295 firstObject];
              v172 = [v171 UTF8String];

              v173 = strdup(v172);
              v174 = v311->indexOfIdMapping;
              v311->directive_id_mapping[v311->indexOfIdMapping].var3 = v173;
              v311->directive_id_mapping[v174].var2.var0 = 0;
              v175 = &v311->directive_id_mapping[v311->indexOfIdMapping];
              *(v175 + 16) = 0;
              *(v175 + 24) = 0;
              *(v175 + 32) = 0;
              v176 = [v28 allKeys];
              v177 = [v176 objectAtIndexedSubscript:0];
              v178 = [v177 integerValue];

              if (v178)
              {
                v326 = 0u;
                v327 = 0u;
                v324 = 0u;
                v325 = 0u;
                v179 = [v28 allKeys];
                v180 = [v179 countByEnumeratingWithState:&v324 objects:v347 count:16];
                if (v180)
                {
                  v181 = v180;
                  v182 = v28;
                  v183 = 0;
                  v184 = *v325;
                  do
                  {
                    v185 = 0;
                    v186 = v183;
                    do
                    {
                      if (*v325 != v184)
                      {
                        objc_enumerationMutation(v179);
                      }

                      v183 = v186 + 1;
                      v311->directive_id_mapping[v311->indexOfIdMapping].var2.var1[v186++] = [*(*(&v324 + 1) + 8 * v185++) intValue];
                    }

                    while (v181 != v185);
                    v181 = [v179 countByEnumeratingWithState:&v324 objects:v347 count:16];
                  }

                  while (v181);
                  v29 = v294;
                  v28 = v182;
                  v8 = v288;
                }
              }

              else
              {
                v257 = MEMORY[0x1E695D608];
                v258 = lowercase_keys(v28);
                v259 = [v257 dictionaryWithDictionary:v258];

                v179 = v259;
                v311->directive_id_mapping[v311->indexOfIdMapping].var2.var0 = v179;
              }

              v260 = v311->mapInflatedIndexToSize;
              v261 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v28, "count") - 1}];
              v262 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
              [(NSMutableDictionary *)v260 setObject:v261 forKey:v262];

              indexOfIdMapping = v311->indexOfIdMapping;
              v11 = (&sLocaleSpecificMatchingLock + 64);
              v12 = v289;
            }

            v311->indexOfIdMapping = indexOfIdMapping + 1;
            goto LABEL_163;
          case 7uLL:
            sizeOfResultSetIdMapping = v311->sizeOfResultSetIdMapping;
            indexOfResultSetIdMapping = v311->indexOfResultSetIdMapping;
            if (sizeOfResultSetIdMapping == indexOfResultSetIdMapping)
            {
              v101 = sizeOfResultSetIdMapping | (sizeOfResultSetIdMapping >> 1) | ((sizeOfResultSetIdMapping | (sizeOfResultSetIdMapping >> 1)) >> 2);
              v102 = v101 | (v101 >> 4) | ((v101 | (v101 >> 4)) >> 8);
              v103 = (v102 | HIWORD(v102)) + 1;
              v311->sizeOfResultSetIdMapping = v103;
              v311->directive_resultset_id_mapping = malloc_type_realloc(v311->directive_resultset_id_mapping, 56 * v103, 0x10F20409CFFA869uLL);
              indexOfResultSetIdMapping = v311->indexOfResultSetIdMapping;
            }

            if (v28)
            {
              v311->directive_resultset_id_mapping[indexOfResultSetIdMapping].var0 = v22;
              v311->directive_resultset_id_mapping[v311->indexOfResultSetIdMapping].var1 = [v28 count] + v22;
              *(v11 + 285) = [v28 count] + *(v11 + 285) - 1;
              v104 = [v295 firstObject];
              v105 = [v104 UTF8String];

              v311->directive_resultset_id_mapping[v311->indexOfResultSetIdMapping].var3 = strdup(v105);
              v106 = [v28 allKeys];
              v107 = [v106 objectAtIndexedSubscript:0];
              v108 = [v107 integerValue];

              if (v108)
              {
                v322 = 0u;
                v323 = 0u;
                v320 = 0u;
                v321 = 0u;
                v109 = v28;
                v110 = [v28 allKeys];
                v111 = [v110 countByEnumeratingWithState:&v320 objects:v346 count:16];
                if (v111)
                {
                  v112 = v111;
                  v113 = 0;
                  v114 = *v321;
                  do
                  {
                    v115 = 0;
                    v116 = v113;
                    do
                    {
                      if (*v321 != v114)
                      {
                        objc_enumerationMutation(v110);
                      }

                      v113 = v116 + 1;
                      v311->directive_resultset_id_mapping[v311->indexOfResultSetIdMapping].var2.var1[v116++] = [*(*(&v320 + 1) + 8 * v115++) intValue];
                    }

                    while (v112 != v115);
                    v112 = [v110 countByEnumeratingWithState:&v320 objects:v346 count:16];
                  }

                  while (v112);
                }

                v311->directive_resultset_id_mapping[v311->indexOfResultSetIdMapping].var2.var0 = 0;
                v29 = v294;
                v28 = v109;
                v8 = v288;
              }

              else
              {
                v250 = MEMORY[0x1E695D608];
                v251 = lowercase_keys(v28);
                v252 = [v250 dictionaryWithDictionary:v251];

                v253 = v252;
                v311->directive_resultset_id_mapping[v311->indexOfResultSetIdMapping].var2.var0 = v253;
              }

              v311->directive_resultset_id_mapping[v311->indexOfResultSetIdMapping].var4 = 0;
              v254 = v311->mapInflatedIndexToSize;
              v255 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v28, "count") - 1}];
              v256 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
              [(NSMutableDictionary *)v254 setObject:v255 forKey:v256];

              indexOfResultSetIdMapping = v311->indexOfResultSetIdMapping;
              v11 = (&sLocaleSpecificMatchingLock + 64);
              v12 = v289;
            }

            v311->indexOfResultSetIdMapping = indexOfResultSetIdMapping + 1;
            goto LABEL_163;
          case 8uLL:
            sizeOfResultSetIdScoreMapping = v311->sizeOfResultSetIdScoreMapping;
            indexOfResultSetIdScoreMapping = v311->indexOfResultSetIdScoreMapping;
            if (sizeOfResultSetIdScoreMapping == indexOfResultSetIdScoreMapping)
            {
              v197 = sizeOfResultSetIdScoreMapping | (sizeOfResultSetIdScoreMapping >> 1) | ((sizeOfResultSetIdScoreMapping | (sizeOfResultSetIdScoreMapping >> 1)) >> 2);
              v198 = v197 | (v197 >> 4) | ((v197 | (v197 >> 4)) >> 8);
              v199 = (v198 | HIWORD(v198)) + 1;
              v311->sizeOfResultSetIdScoreMapping = v199;
              v311->directive_resultset_id_score_mapping = malloc_type_realloc(v311->directive_resultset_id_score_mapping, v199 << 6, 0x10F2040D14D0496uLL);
              indexOfResultSetIdScoreMapping = v311->indexOfResultSetIdScoreMapping;
            }

            if (v28)
            {
              v311->directive_resultset_id_score_mapping[indexOfResultSetIdScoreMapping].var0 = v22;
              v311->directive_resultset_id_score_mapping[v311->indexOfResultSetIdScoreMapping].var1 = [v28 count] + v22;
              *(v11 + 285) = [v28 count] + *(v11 + 285) - 1;
              v200 = [v23 firstObject];
              v201 = [v200 UTF8String];

              v311->directive_resultset_id_score_mapping[v311->indexOfResultSetIdScoreMapping].var4 = strdup(v201);
              v202 = [v28 allKeys];
              v203 = [v202 objectAtIndexedSubscript:0];
              v204 = [v203 integerValue];

              if (v204)
              {
                v318 = 0u;
                v319 = 0u;
                v316 = 0u;
                v317 = 0u;
                v205 = v28;
                v206 = [v28 allKeys];
                v207 = [v206 countByEnumeratingWithState:&v316 objects:v345 count:16];
                if (v207)
                {
                  v208 = v207;
                  v209 = 0;
                  v210 = *v317;
                  do
                  {
                    v211 = 0;
                    v212 = v209;
                    do
                    {
                      if (*v317 != v210)
                      {
                        objc_enumerationMutation(v206);
                      }

                      v209 = v212 + 1;
                      v311->directive_resultset_id_score_mapping[v311->indexOfResultSetIdScoreMapping].var2.var1[v212++] = [*(*(&v316 + 1) + 8 * v211++) intValue];
                    }

                    while (v208 != v211);
                    v208 = [v206 countByEnumeratingWithState:&v316 objects:v345 count:16];
                  }

                  while (v208);
                }

                v311->directive_resultset_id_score_mapping[v311->indexOfResultSetIdScoreMapping].var2.var0 = 0;
                v29 = v294;
                v28 = v205;
              }

              else
              {
                v263 = MEMORY[0x1E695D608];
                v264 = lowercase_keys(v28);
                v265 = [v263 dictionaryWithDictionary:v264];

                v266 = v265;
                v311->directive_resultset_id_score_mapping[v311->indexOfResultSetIdScoreMapping].var2.var0 = v266;
              }

              v11 = (&sLocaleSpecificMatchingLock + 64);
              if (v293)
              {
                v267 = MEMORY[0x1E695D608];
                v268 = lowercase_keys(v293);
                v269 = [v267 dictionaryWithDictionary:v268];

                v270 = v269;
                v311->directive_resultset_id_score_mapping[v311->indexOfResultSetIdScoreMapping].var3 = v270;

                v271 = v311->indexOfResultSetIdScoreMapping;
              }

              else
              {
                v271 = v311->indexOfResultSetIdScoreMapping;
                v311->directive_resultset_id_score_mapping[v271].var3 = 0;
              }

              v311->directive_resultset_id_score_mapping[v271].var5 = 0;
              v272 = v311->mapInflatedIndexToSize;
              v273 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v28, "count") - 1}];
              v274 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
              [(NSMutableDictionary *)v272 setObject:v273 forKey:v274];

              indexOfResultSetIdScoreMapping = v311->indexOfResultSetIdScoreMapping;
              v12 = v289;
              v13 = v291;
              v23 = v295;
            }

            v311->indexOfResultSetIdScoreMapping = indexOfResultSetIdScoreMapping + 1;
            goto LABEL_164;
          case 9uLL:
            v78 = v23;

            v287 = v78;
            goto LABEL_163;
          case 10uLL:
            sizeOfOneSidedInverse = v311->sizeOfOneSidedInverse;
            indexOfOneSidedInverse = v311->indexOfOneSidedInverse;
            directive_one_sided_inverse = v311->directive_one_sided_inverse;
            if (sizeOfOneSidedInverse == indexOfOneSidedInverse)
            {
              v190 = sizeOfOneSidedInverse | (sizeOfOneSidedInverse >> 1) | ((sizeOfOneSidedInverse | (sizeOfOneSidedInverse >> 1)) >> 2);
              v191 = v190 | (v190 >> 4) | ((v190 | (v190 >> 4)) >> 8);
              v192 = (v191 | HIWORD(v191)) + 1;
              v311->sizeOfOneSidedInverse = v192;
              directive_one_sided_inverse = malloc_type_realloc(directive_one_sided_inverse, 16 * v192, 0x1000040451B5BE8uLL);
              v311->directive_one_sided_inverse = directive_one_sided_inverse;
              indexOfOneSidedInverse = v311->indexOfOneSidedInverse;
            }

            directive_one_sided_inverse[indexOfOneSidedInverse].var0 = v22;
            v193 = [v23 count];
            v194 = v311->indexOfOneSidedInverse;
            v311->directive_one_sided_inverse[v194].var1 = v193 + v22;
            v311->indexOfOneSidedInverse = v194 + 1;
            goto LABEL_164;
          case 11uLL:
            sizeOfQuantize = v311->sizeOfQuantize;
            if (sizeOfQuantize == v311->indexOfQuantize)
            {
              v41 = sizeOfQuantize | (sizeOfQuantize >> 1) | ((sizeOfQuantize | (sizeOfQuantize >> 1)) >> 2);
              v42 = v41 | (v41 >> 4) | ((v41 | (v41 >> 4)) >> 8);
              v43 = (v42 | HIWORD(v42)) + 1;
              v311->sizeOfQuantize = v43;
              v311->directive_quantize = malloc_type_realloc(v311->directive_quantize, 32 * v43, 0x10800403A84FC25uLL);
            }

            if (!v28)
            {
              goto LABEL_164;
            }

            v44 = [v28 objectForKey:@"bins"];
            v38 = v44;
            if (v44 && [v44 count])
            {
              v45 = [v38 count];
              v311->directive_quantize[v311->indexOfQuantize].var3 = v45;
              v311->directive_quantize[v311->indexOfQuantize].var2 = malloc_type_calloc(v45, 4uLL, 0x100004052888210uLL);
              if ([v38 count])
              {
                v46 = 0;
                do
                {
                  v47 = [v38 objectAtIndex:v46];
                  [v47 floatValue];
                  v311->directive_quantize[v311->indexOfQuantize].var2[v46] = v48;

                  ++v46;
                }

                while ([v38 count] > v46);
              }

              v311->directive_quantize[v311->indexOfQuantize].var0 = v22;
              v311->directive_quantize[v311->indexOfQuantize].var1 = [v295 count] + v22;
              v49 = [v38 count];
              indexOfQuantize = v311->indexOfQuantize;
              v311->directive_quantize[indexOfQuantize].var3 = v49;
              v311->indexOfQuantize = indexOfQuantize + 1;
              v12 = v289;
            }

            goto LABEL_45;
          case 12uLL:
            if (!v28)
            {
              goto LABEL_164;
            }

            v57 = [v14 objectForKey:@"features"];
            v58 = [v57 count];
            v59 = [v28 count];
            v311->directive_local_resultset_id_values_mapping.start_idx = v22;
            v311->directive_local_resultset_id_values_mapping.end_idx = v59 * v58 + v22;
            v60 = v59 * v58 - 1;
            *(v11 + 285) += v60;
            v61 = MEMORY[0x1E695D608];
            v62 = lowercase_keys(v28);
            v63 = [v61 dictionaryWithDictionary:v62];

            obj = v63;
            v311->directive_local_resultset_id_values_mapping.mapping = obj;
            v64 = v311->mapInflatedIndexToSize;
            v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v60];
            v29 = v294;
            v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
            [(NSMutableDictionary *)v64 setObject:v65 forKey:v66];

            v307 = v58;
            v67 = 8 * v58;
            v8 = v288;
            v311->directive_local_resultset_id_values_mapping.PRSRankingBundleFeatureOrder = malloc_type_malloc(v67, 0x100004000313F17uLL);
            v311->directive_local_resultset_id_values_mapping.PRSRankingBundleFeaturePickers = malloc_type_malloc(8 * [v57 count], 0x80040B8603338uLL);
            if ([v57 count])
            {
              v68 = 0;
              do
              {
                v69 = [v57 objectAtIndexedSubscript:v68];
                v70 = [v69 count];

                if (v70 >= 4)
                {
                  v71 = [v57 objectAtIndexedSubscript:v68];
                  v72 = [v71 objectAtIndexedSubscript:3];

                  v73 = [v57 objectAtIndexedSubscript:v68];
                  v74 = [v73 objectAtIndexedSubscript:4];

                  v75 = [sLocalRSFeatureNameToBundleFeatureMappings objectForKeyedSubscript:v72];
                  v311->directive_local_resultset_id_values_mapping.PRSRankingBundleFeatureOrder[v68] = [v75 unsignedIntegerValue];

                  v76 = [v74 isEqualToString:@"min"];
                  v13 = v291;
                  v77 = &sMinPicker;
                  if (!v76)
                  {
                    v77 = &sMaxPicker;
                  }

                  v311->directive_local_resultset_id_values_mapping.PRSRankingBundleFeaturePickers[v68] = *v77;
                }

                ++v68;
              }

              while (v68 < [v57 count]);
            }

            v311->directive_local_resultset_id_values_mapping.numPRSRankingBundleFeatures = v307;
            v311->directive_local_resultset_id_values_mapping.mapSize = 0;

            v11 = (&sLocaleSpecificMatchingLock + 64);
            v12 = v289;
            goto LABEL_163;
          case 13uLL:
            if (!v28)
            {
              goto LABEL_164;
            }

            v147 = [v14 objectForKey:@"features"];
            v148 = v11;
            v149 = [v147 count];
            v150 = [v28 count];
            v311->directive_parsec_resultset_id_values_mapping.start_idx = v22;
            v311->directive_parsec_resultset_id_values_mapping.end_idx = v150 * v149 + v22;
            objb = v150 * v149;
            v151 = v150 * v149 - 1;
            *(v148 + 285) += v151;
            v152 = MEMORY[0x1E695D608];
            v153 = lowercase_keys(v28);
            v154 = [v152 dictionaryWithDictionary:v153];

            v298 = v154;
            v311->directive_parsec_resultset_id_values_mapping.mapping = v298;
            v155 = v311->mapInflatedIndexToSize;
            v156 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v151];
            v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v306];
            [(NSMutableDictionary *)v155 setObject:v156 forKey:v157];

            v311->directive_parsec_resultset_id_values_mapping.numFeatures = v149;
            v311->directive_parsec_resultset_id_values_mapping.PRSRankingBundleFeaturePickers = malloc_type_malloc(8 * v149, 0x80040B8603338uLL);
            if ([v147 count])
            {
              v158 = 0;
              do
              {
                v159 = [v147 objectAtIndexedSubscript:v158];
                v160 = [v159 count];

                if (v160 >= 4)
                {
                  v161 = [v147 objectAtIndexedSubscript:v158];
                  v162 = [v161 objectAtIndexedSubscript:4];

                  v163 = [v162 isEqualToString:@"min"];
                  v164 = &sMinPicker;
                  if (!v163)
                  {
                    v164 = &sMaxPicker;
                  }

                  v311->directive_parsec_resultset_id_values_mapping.PRSRankingBundleFeaturePickers[v158] = *v164;
                }

                ++v158;
              }

              while (v158 < [v147 count]);
            }

            v165 = malloc_type_malloc(4 * objb, 0x100004052888210uLL);
            v311->directive_parsec_resultset_id_values_mapping.score_vector = v165;
            v311->directive_parsec_resultset_id_values_mapping.mapSize = 4 * objb;
            v12 = v289;
            v29 = v294;
            if (objb)
            {
              memset_pattern16(v165, &unk_1DA0D53C0, 4 * objb);
            }

            v11 = (&sLocaleSpecificMatchingLock + 64);
            goto LABEL_163;
          case 14uLL:
            if (![v28 count])
            {
              goto LABEL_164;
            }

            v38 = [v28 objectForKey:@"model_weight_x"];
            v39 = [v28 objectForKey:@"model_weight_y"];
            [v38 doubleValue];
            [(PRSDirectivesManager *)v311 setWeightX:?];
            [v39 doubleValue];
            [(PRSDirectivesManager *)v311 setWeightY:?];

LABEL_45:
LABEL_163:
            v23 = v295;
LABEL_164:
            v26 = v292;
            break;
          case 15uLL:
            sizeOfFanOutValue = v311->sizeOfFanOutValue;
            indexOfFanOutValue = v311->indexOfFanOutValue;
            directive_fan_out = v311->directive_fan_out;
            if (sizeOfFanOutValue == indexOfFanOutValue)
            {
              v88 = sizeOfFanOutValue | (sizeOfFanOutValue >> 1) | ((sizeOfFanOutValue | (sizeOfFanOutValue >> 1)) >> 2);
              v89 = v88 | (v88 >> 4) | ((v88 | (v88 >> 4)) >> 8);
              v90 = (v89 | HIWORD(v89)) + 1;
              v311->sizeOfFanOutValue = v90;
              directive_fan_out = malloc_type_realloc(directive_fan_out, 16 * v90, 0x1000040451B5BE8uLL);
              v311->directive_fan_out = directive_fan_out;
              indexOfFanOutValue = v311->indexOfFanOutValue;
            }

            directive_fan_out[indexOfFanOutValue].var0 = v22;
            v91 = [v23 count];
            v92 = v311->indexOfFanOutValue;
            v311->directive_fan_out[v92].var1 = v91 + v22;
            *(v11 + 285) += 95;
            v311->indexOfFanOutValue = v92 + 1;
            goto LABEL_164;
          default:
            goto LABEL_164;
        }
      }

      ++v13;
    }

    while (v13 != v12);
    v275 = [v8 countByEnumeratingWithState:&v340 objects:v352 count:16];
    v12 = v275;
  }

  while (v275);
LABEL_176:

  if ([*(v10 + 343) count])
  {
    v276 = [PRSL2FeatureVector contextWithFeatureOrder:*(v10 + 343) withInflation:*(v11 + 285) withInflatedIndexToSize:v311->mapInflatedIndexToSize];
    [(PRSDirectivesManager *)v311 setProcessingContext:v276];
  }

  if (v287)
  {
    v277 = objc_opt_new();
    v278 = v311->disabledFeatureIndices;
    v311->disabledFeatureIndices = v277;

    v314 = 0u;
    v315 = 0u;
    v312 = 0u;
    v313 = 0u;
    v279 = v287;
    v280 = [v279 countByEnumeratingWithState:&v312 objects:v344 count:16];
    if (v280)
    {
      v281 = v280;
      v282 = *v313;
      do
      {
        for (i = 0; i != v281; ++i)
        {
          if (*v313 != v282)
          {
            objc_enumerationMutation(v279);
          }

          v284 = [*(v10 + 343) indexOfObject:*(*(&v312 + 1) + 8 * i)];
          if (v284 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableIndexSet *)v311->disabledFeatureIndices addIndex:v284];
          }
        }

        v281 = [v279 countByEnumeratingWithState:&v312 objects:v344 count:16];
      }

      while (v281);
    }

    v11 = &sLocaleSpecificMatchingLock.__opaque[56];
  }

  *(v11 + 285) = 0;
  [*(v10 + 343) removeAllObjects];

  v285 = *MEMORY[0x1E69E9840];
}

- (void)processResultSetValuesWithMap:(id)a3 serverFeatures:(id)a4
{
  v178 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v141 = a4;
  v131 = v6;
  v142 = [v6 copy];
  indexOfResultSetIdScoreMapping = self->indexOfResultSetIdScoreMapping;
  v136 = self;
  if (indexOfResultSetIdScoreMapping >= 1)
  {
    v8 = 0;
    do
    {
      v9 = self->directive_resultset_id_score_mapping[v8].var2.var0;
      v10 = self->directive_resultset_id_score_mapping[v8].var3;
      v11 = [(__CFDictionary *)v9 allKeys];
      v12 = malloc_type_malloc(4 * [v11 count], 0x100004052888210uLL);

      v13 = [(__CFDictionary *)v9 allKeys];
      v14 = [v13 count];

      if (v14)
      {
        memset_pattern16(v12, &unk_1DA0D53C0, 4 * v14);
      }

      self->directive_resultset_id_score_mapping[v8].var5 = v12;
      if (([v142 count] || objc_msgSend(v141, "count")) && !strcmp("resultset_bundle_id_score", self->directive_resultset_id_score_mapping[v8].var4))
      {
        v139 = v12;
        v137 = v8;
        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        v138 = [v142 keyEnumerator];
        v15 = [v138 countByEnumeratingWithState:&v167 objects:v177 count:16];
        v140 = v10;
        if (v15)
        {
          v16 = v15;
          v17 = *v168;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v168 != v17)
              {
                objc_enumerationMutation(v138);
              }

              v19 = *(*(&v167 + 1) + 8 * i);
              v20 = [v19 lowercaseString];
              v21 = [(__CFDictionary *)v9 objectForKey:v20];
              v22 = [v142 objectForKey:v19];
              v23 = [v22 objectAtIndexedSubscript:0];

              v24 = [(__CFDictionary *)v10 objectForKey:v20];

              if (!v24)
              {
                if (v21)
                {
                  v25 = [v21 unsignedIntegerValue];
                }

                else
                {
                  v26 = [(__CFDictionary *)v9 objectForKey:@"__none_of_the_above__"];
                  v25 = [v26 unsignedIntegerValue];
                }

                v27 = [(__CFDictionary *)v9 allKeys];
                if (v25 >= [v27 count])
                {
                  [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
                }

                [v23 floatValue];
                v10 = v140;
                *&v139[4 * v25] = v28;
              }
            }

            v16 = [v138 countByEnumeratingWithState:&v167 objects:v177 count:16];
          }

          while (v16);
        }

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v138 = [v141 keyEnumerator];
        v29 = [v138 countByEnumeratingWithState:&v163 objects:v176 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v164;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v164 != v31)
              {
                objc_enumerationMutation(v138);
              }

              v33 = *(*(&v163 + 1) + 8 * j);
              v34 = [v33 lowercaseString];
              v35 = [(__CFDictionary *)v9 objectForKey:v34];
              v36 = [v141 objectForKey:v33];
              v37 = [v36 maxScore];

              v38 = [(__CFDictionary *)v10 objectForKey:v34];

              if (!v38)
              {
                if (v35)
                {
                  v39 = [v35 unsignedIntegerValue];
                }

                else
                {
                  v40 = [(__CFDictionary *)v9 objectForKey:@"__none_of_the_above__"];
                  v39 = [v40 unsignedIntegerValue];
                }

                v41 = [(__CFDictionary *)v9 allKeys];
                if (v39 >= [v41 count])
                {
                  [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
                }

                [v37 floatValue];
                v10 = v140;
                *&v139[4 * v39] = v42;
              }
            }

            v30 = [v138 countByEnumeratingWithState:&v163 objects:v176 count:16];
          }

          while (v30);
        }

        self = v136;
        v8 = v137;
      }

      v8 = (v8 + 1);
    }

    while (v8 < self->indexOfResultSetIdScoreMapping);
  }

  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v142, "count")}];
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v44 = [v142 keyEnumerator];
  v45 = [v44 countByEnumeratingWithState:&v159 objects:v175 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v160;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v160 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [v43 addObject:*(*(&v159 + 1) + 8 * k)];
      }

      v46 = [v44 countByEnumeratingWithState:&v159 objects:v175 count:16];
    }

    while (v46);
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v49 = [v141 keyEnumerator];
  v50 = [v49 countByEnumeratingWithState:&v155 objects:v174 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v156;
    do
    {
      for (m = 0; m != v51; ++m)
      {
        if (*v156 != v52)
        {
          objc_enumerationMutation(v49);
        }

        [v43 addObject:*(*(&v155 + 1) + 8 * m)];
      }

      v51 = [v49 countByEnumeratingWithState:&v155 objects:v174 count:16];
    }

    while (v51);
  }

  indexOfResultSetIdMapping = self->indexOfResultSetIdMapping;
  v132 = v43;
  if (indexOfResultSetIdMapping >= 1)
  {
    v55 = 0;
    do
    {
      v56 = self->directive_resultset_id_mapping[v55].var2.var0;
      v57 = [(__CFDictionary *)v56 allKeys];
      v58 = malloc_type_calloc([v57 count], 4uLL, 0x100004052888210uLL);

      self->directive_resultset_id_mapping[v55].var4 = v58;
      if ([v43 count] && !strcmp("resultset_bundle_id", self->directive_resultset_id_mapping[v55].var3))
      {
        v139 = v55;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v140 = v43;
        v59 = [(__CFDictionary *)v140 countByEnumeratingWithState:&v151 objects:v173 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v152;
          do
          {
            for (n = 0; n != v60; ++n)
            {
              if (*v152 != v61)
              {
                objc_enumerationMutation(v140);
              }

              v63 = [*(*(&v151 + 1) + 8 * n) lowercaseString];
              v64 = [(__CFDictionary *)v56 objectForKey:v63];
              if (v64)
              {
                v65 = [(__CFDictionary *)v56 objectForKey:v63];
                v66 = [v65 unsignedIntegerValue];
              }

              else
              {
                v65 = [(__CFDictionary *)v56 objectForKey:@"__none_of_the_above__"];
                v66 = [v65 integerValue];
              }

              v67 = v66;

              v68 = [(__CFDictionary *)v56 allKeys];
              if (v67 >= [v68 count])
              {
                [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
              }

              v58[v67] = 1.0;
            }

            v60 = [(__CFDictionary *)v140 countByEnumeratingWithState:&v151 objects:v173 count:16];
          }

          while (v60);
        }

        self = v136;
        v43 = v132;
        v55 = v139;
      }

      ++v55;
    }

    while (v55 < self->indexOfResultSetIdMapping);
  }

  if ([v142 count])
  {
    mapping = self->directive_local_resultset_id_values_mapping.mapping;
    if (mapping)
    {
      v70 = mapping;
      v71 = [(__CFDictionary *)v70 count];
      numPRSRankingBundleFeatures = self->directive_local_resultset_id_values_mapping.numPRSRankingBundleFeatures;
      v130 = v71;
      v139 = (4 * v71 * numPRSRankingBundleFeatures);
      if (self->directive_local_resultset_id_values_mapping.mapSize < v139)
      {
        v73 = v139;
        self->directive_local_resultset_id_values_mapping.score_vector = malloc_type_realloc(self->directive_local_resultset_id_values_mapping.score_vector, v139, 0xC98E2CF4uLL);
        self->directive_local_resultset_id_values_mapping.mapSize = v73;
        numPRSRankingBundleFeatures = self->directive_local_resultset_id_values_mapping.numPRSRankingBundleFeatures;
      }

      score_vector = self->directive_local_resultset_id_values_mapping.score_vector;
      if (numPRSRankingBundleFeatures * v130)
      {
        memset_pattern16(self->directive_local_resultset_id_values_mapping.score_vector, &unk_1DA0D53C0, 4 * numPRSRankingBundleFeatures * v130);
      }

      if (v139 < 4 * (self->directive_local_resultset_id_values_mapping.end_idx - self->directive_local_resultset_id_values_mapping.start_idx))
      {
        [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
      }

      if (numPRSRankingBundleFeatures)
      {
        v75 = 0;
        do
        {
          PRSRankingBundleFeatureOrder = self->directive_local_resultset_id_values_mapping.PRSRankingBundleFeatureOrder;
          v134 = v75;
          v140 = PRSRankingBundleFeatureOrder[v75];
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          v135 = [v142 keyEnumerator];
          v77 = [v135 countByEnumeratingWithState:&v147 objects:v172 count:16];
          if (v77)
          {
            v78 = v77;
            v79 = *v148;
            v137 = (v134 * v130);
            v138 = v79;
            v133 = &score_vector[v134 * v130];
            do
            {
              for (ii = 0; ii != v78; ++ii)
              {
                if (*v148 != v138)
                {
                  objc_enumerationMutation(v135);
                }

                v81 = score_vector;
                v82 = *(*(&v147 + 1) + 8 * ii);
                v83 = [v142 objectForKey:v82];
                v84 = [v82 lowercaseString];
                v85 = [(__CFDictionary *)v70 objectForKey:v84];

                if (v85)
                {
                  v86 = [(__CFDictionary *)v70 objectForKey:v84];
                  v87 = [v86 unsignedIntegerValue];

                  v88 = [v83 objectAtIndexedSubscript:v140];
                  [v88 floatValue];
                }

                else
                {
                  v90 = [(__CFDictionary *)v70 objectForKey:@"__none_of_the_above__"];
                  v87 = [v90 integerValue];

                  v91 = v133[v87];
                  v92 = v136->directive_local_resultset_id_values_mapping.PRSRankingBundleFeaturePickers[v134];
                  v88 = [v83 objectAtIndexedSubscript:v140];
                  [v88 floatValue];
                  v89 = v92[2](v92);
                }

                v93 = v89;

                if (v137 + v87 >= v139)
                {
                  [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
                }

                score_vector = v81;
                v81[v137 + v87] = v93;
              }

              v78 = [v135 countByEnumeratingWithState:&v147 objects:v172 count:16];
            }

            while (v78);
          }

          v75 = v134 + 1;
          self = v136;
        }

        while ((v134 + 1) < v136->directive_local_resultset_id_values_mapping.numPRSRankingBundleFeatures);
      }

      v43 = v132;
    }
  }

  if ([v141 count])
  {
    v94 = self->directive_parsec_resultset_id_values_mapping.mapping;
    v95 = [(__CFDictionary *)v94 count];
    numFeatures = self->directive_parsec_resultset_id_values_mapping.numFeatures;
    v130 = v95;
    v103 = numFeatures * v95;
    v140 = (4 * numFeatures * v95);
    if (self->directive_parsec_resultset_id_values_mapping.mapSize < v140)
    {
      v104 = v140;
      v95 = malloc_type_realloc(self->directive_parsec_resultset_id_values_mapping.score_vector, v140, 0x4D77FA24uLL);
      self->directive_parsec_resultset_id_values_mapping.score_vector = v95;
      self->directive_parsec_resultset_id_values_mapping.mapSize = v104;
    }

    v105 = self->directive_parsec_resultset_id_values_mapping.score_vector;
    if (v103)
    {
      memset_pattern16(self->directive_parsec_resultset_id_values_mapping.score_vector, &unk_1DA0D53C0, v140);
    }

    if (processResultSetValuesWithMap_serverFeatures__onceToken != -1)
    {
      [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
    }

    v129 = &v129;
    MEMORY[0x1EEE9AC00](v95, 8 * numFeatures, v96, v97, v98, v99, v100, v101);
    v139 = &v129 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v139, v106);
    if (numFeatures)
    {
      v138 = v105;
      v107 = 0;
      v108 = v139;
      do
      {
        v109 = [processResultSetValuesWithMap_serverFeatures__parsecFeatureSelectors objectAtIndexedSubscript:v107];
        *&v108[8 * v107] = NSSelectorFromString(v109);

        ++v107;
      }

      while (numFeatures != v107);
      v110 = 0;
      v137 = v94;
      v111 = v138;
      v133 = numFeatures;
      do
      {
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v135 = [v141 keyEnumerator];
        v112 = [v135 countByEnumeratingWithState:&v143 objects:v171 count:16];
        if (v112)
        {
          v113 = v112;
          v114 = *v144;
          v115 = v110 * v130;
          v134 = &v111[4 * v110 * v130];
          do
          {
            for (jj = 0; jj != v113; ++jj)
            {
              if (*v144 != v114)
              {
                objc_enumerationMutation(v135);
              }

              v117 = *(*(&v143 + 1) + 8 * jj);
              v118 = [v141 objectForKey:v117];
              [objc_msgSend(v118 performSelector:{*&v139[8 * v110]), "floatValue"}];
              v120 = v119;
              v121 = [v117 lowercaseString];
              v122 = [(__CFDictionary *)v94 objectForKey:v121];

              if (v122)
              {
                v123 = [(__CFDictionary *)v94 objectForKey:v121];
                v124 = [v123 unsignedIntegerValue];
              }

              else
              {
                v125 = [(__CFDictionary *)v94 objectForKey:@"__none_of_the_above__"];
                v124 = [v125 integerValue];

                v120 = (*(v136->directive_local_resultset_id_values_mapping.PRSRankingBundleFeaturePickers[v110] + 2))(v120, *&v134[4 * v124]);
              }

              v126 = v124 + v115;
              if (v124 + v115 >= v140)
              {
                [PRSDirectivesManager processResultSetValuesWithMap:serverFeatures:];
              }

              v111 = v138;
              *&v138[4 * v126] = v120;

              v94 = v137;
            }

            v113 = [v135 countByEnumeratingWithState:&v143 objects:v171 count:16];
          }

          while (v113);
        }

        v110 = (v110 + 1);
      }

      while (v110 != v133);
    }

    v43 = v132;
LABEL_119:

    goto LABEL_120;
  }

  if (self->directive_parsec_resultset_id_values_mapping.mapSize)
  {
    v94 = self->directive_parsec_resultset_id_values_mapping.mapping;
    v127 = self->directive_parsec_resultset_id_values_mapping.numFeatures * [(__CFDictionary *)v94 count];
    if (v127)
    {
      memset_pattern16(self->directive_parsec_resultset_id_values_mapping.score_vector, &unk_1DA0D53C0, 4 * v127);
    }

    goto LABEL_119;
  }

LABEL_120:

  v128 = *MEMORY[0x1E69E9840];
}

void __69__PRSDirectivesManager_processResultSetValuesWithMap_serverFeatures___block_invoke()
{
  v14[11] = *MEMORY[0x1E69E9840];
  v13 = NSStringFromSelector(sel_numResults);
  v14[0] = v13;
  v0 = NSStringFromSelector(sel_maxScoreAbsRank);
  v14[1] = v0;
  v1 = NSStringFromSelector(sel_maxScoreRelRank);
  v14[2] = v1;
  v2 = NSStringFromSelector(sel_originalOrderAbsRank);
  v14[3] = v2;
  v3 = NSStringFromSelector(sel_originalOrderRelRank);
  v14[4] = v3;
  v4 = NSStringFromSelector(sel_maxCEPAbsRank);
  v14[5] = v4;
  v5 = NSStringFromSelector(sel_maxCEPRelRank);
  v14[6] = v5;
  v6 = NSStringFromSelector("cep");
  v14[7] = v6;
  v7 = NSStringFromSelector(sel_cepMaxRatio);
  v14[8] = v7;
  v8 = NSStringFromSelector(sel_cepAllMaxRatio);
  v14[9] = v8;
  v9 = NSStringFromSelector(sel_blockIdValue);
  v14[10] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:11];
  v11 = processResultSetValuesWithMap_serverFeatures__parsecFeatureSelectors;
  processResultSetValuesWithMap_serverFeatures__parsecFeatureSelectors = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)cleanup
{
  indexOfResultSetIdMapping = self->indexOfResultSetIdMapping;
  if (indexOfResultSetIdMapping >= 1)
  {
    v4 = 0;
    v5 = 48;
    do
    {
      v6 = *(&self->directive_resultset_id_mapping->var0 + v5);
      if (v6)
      {
        free(v6);
        *(&self->directive_resultset_id_mapping->var0 + v5) = 0;
        indexOfResultSetIdMapping = self->indexOfResultSetIdMapping;
      }

      ++v4;
      v5 += 56;
    }

    while (v4 < indexOfResultSetIdMapping);
  }

  indexOfResultSetIdScoreMapping = self->indexOfResultSetIdScoreMapping;
  if (indexOfResultSetIdScoreMapping >= 1)
  {
    v8 = 0;
    v9 = 56;
    do
    {
      v10 = *(&self->directive_resultset_id_score_mapping->var0 + v9);
      if (v10)
      {
        free(v10);
        *(&self->directive_resultset_id_score_mapping->var0 + v9) = 0;
        indexOfResultSetIdScoreMapping = self->indexOfResultSetIdScoreMapping;
      }

      ++v8;
      v9 += 64;
    }

    while (v8 < indexOfResultSetIdScoreMapping);
  }
}

uint64_t __81__PRSDirectivesManager_processL2FeatureVector_populatingValues_scoreValue_count___block_invoke_2()
{
  [@"com.apple.searchd" UTF8String];

  return os_variant_has_internal_diagnostics();
}

@end