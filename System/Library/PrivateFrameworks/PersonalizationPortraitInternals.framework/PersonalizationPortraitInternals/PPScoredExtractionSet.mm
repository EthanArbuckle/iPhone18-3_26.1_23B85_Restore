@interface PPScoredExtractionSet
- (id)description;
- (id)numberOfExtractions;
- (unint64_t)_donateLocationsWithContextualNamedEntities:(id)a3;
- (void)flushWrites;
- (void)writeSynchronous;
@end

@implementation PPScoredExtractionSet

- (void)writeSynchronous
{
  v59 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_entities count])
  {
    v3 = +[PPLocalNamedEntityStore defaultStore];
    entities = self->_entities;
    source = self->_source;
    entityAlgorithm = self->_entityAlgorithm;
    cloudSync = self->_cloudSync;
    sentimentScore = self->_sentimentScore;
    v44 = 0;
    v9 = [v3 donateNamedEntities:entities source:source algorithm:entityAlgorithm cloudSync:cloudSync sentimentScore:&v44 error:sentimentScore];
    v10 = v44;

    if ((v9 & 1) == 0)
    {
      v11 = pp_default_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v10;
        _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "PPScoredExtractionSet failed to donate named entities: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if ([(NSArray *)self->_topics count])
  {

    v12 = +[PPLocalTopicStore defaultStore];
    v13 = self->_source;
    topicAlgorithm = self->_topicAlgorithm;
    v15 = self->_cloudSync;
    v16 = self->_sentimentScore;
    topics = self->_topics;
    topicsExactMatchesInSourceText = self->_topicsExactMatchesInSourceText;
    v43 = 0;
    v19 = [v12 donateTopics:topics source:v13 algorithm:topicAlgorithm cloudSync:v15 sentimentScore:topicsExactMatchesInSourceText exactMatchesInSourceText:&v43 error:v16];
    v10 = v43;

    if ((v19 & 1) == 0)
    {
      v20 = pp_default_log_handle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v10;
        _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "PPScoredExtractionSet failed to donate topics: %@", buf, 0xCu);
      }
    }
  }

  v21 = objc_opt_new();
  v22 = objc_autoreleasePoolPush();
  v23 = self->_entities;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __41__PPScoredExtractionSet_writeSynchronous__block_invoke;
  v41[3] = &unk_278978540;
  v24 = v21;
  v42 = v24;
  [(NSArray *)v23 enumerateObjectsUsingBlock:v41];
  locations = self->_locations;
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __41__PPScoredExtractionSet_writeSynchronous__block_invoke_2;
  v39 = &unk_278978590;
  v26 = v24;
  v40 = v26;
  [(NSMutableDictionary *)locations enumerateKeysAndObjectsUsingBlock:&v36];
  if ([v26 count] >= 0xB)
  {

    v26 = 0;
  }

  objc_autoreleasePoolPop(v22);
  v27 = [(PPScoredExtractionSet *)self _donateLocationsWithContextualNamedEntities:v26];
  v28 = pp_default_log_handle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(PPSource *)self->_source documentId];
    v30 = [(PPSource *)self->_source bundleId];
    v32 = self->_entityAlgorithm;
    v31 = self->_topicAlgorithm;
    v33 = [(NSArray *)self->_entities count];
    v34 = [(NSArray *)self->_topics count];
    *buf = 138413826;
    v46 = v29;
    v47 = 2112;
    v48 = v30;
    v49 = 2048;
    v50 = v32;
    v51 = 2048;
    v52 = v31;
    v53 = 2048;
    v54 = v33;
    v55 = 2048;
    v56 = v34;
    v57 = 2048;
    v58 = v27;
    _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPScoredExtractionSet(%@:%@ alg:%tu/%tu) wrote %tu entities, %tu topics, and %tu locations", buf, 0x48u);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)flushWrites
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = +[PPLocalNamedEntityStore defaultStore];
  v14 = 0;
  v3 = [v2 flushDonationsWithError:&v14];
  v4 = v14;

  v5 = pp_default_log_handle();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "PPScoredExtractionSet flushed named entity donations", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPScoredExtractionSet failed to flush named entity donations: %@", buf, 0xCu);
  }

  v7 = +[PPLocalTopicStore defaultStore];
  v13 = 0;
  v8 = [v7 flushDonationsWithError:&v13];
  v9 = v13;

  v10 = pp_default_log_handle();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEBUG, "PPScoredExtractionSet flushed topic donations", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v9;
    _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "PPScoredExtractionSet failed to flush topic donations: %@", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)numberOfExtractions
{
  v3 = [(NSMutableDictionary *)self->_locations allValues];
  v4 = [v3 _pas_leftFoldWithInitialObject:&unk_284784F08 accumulate:&__block_literal_global_23237];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_topics, "count") + -[NSArray count](self->_entities, "count") + objc_msgSend(v4, "intValue")}];

  return v5;
}

uint64_t __44__PPScoredExtractionSet_numberOfExtractions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 intValue];
  v7 = [v5 count];

  return [v4 numberWithUnsignedInteger:v7 + v6];
}

void __41__PPScoredExtractionSet_writeSynchronous__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 item];
  v3 = [v4 name];
  [v2 addObject:v3];
}

void __41__PPScoredExtractionSet_writeSynchronous__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__PPScoredExtractionSet_writeSynchronous__block_invoke_3;
  v4[3] = &unk_278978568;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

void __41__PPScoredExtractionSet_writeSynchronous__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 location];
  v4 = [v3 placemark];
  v6 = [v4 name];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) removeObject:v6];
    v5 = v6;
  }
}

- (unint64_t)_donateLocationsWithContextualNamedEntities:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_locations count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v5 = +[PPConfiguration sharedInstance];
    v6 = [(PPSource *)self->_source bundleId];
    v7 = [(PPSource *)self->_source language];
    v8 = [v5 extractionAlgorithmsForBundleId:v6 sourceLanguage:v7 conservative:0 domain:2];

    locations = self->_locations;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__PPScoredExtractionSet__donateLocationsWithContextualNamedEntities___block_invoke;
    v13[3] = &unk_278978518;
    v10 = v8;
    v14 = v10;
    v15 = self;
    v16 = v4;
    v17 = &v18;
    [(NSMutableDictionary *)locations enumerateKeysAndObjectsUsingBlock:v13];
    v11 = v19[3];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __69__PPScoredExtractionSet__donateLocationsWithContextualNamedEntities___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v12 = pp_default_log_handle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v13 = [*(*(a1 + 40) + 48) bundleId];
    *buf = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEBUG, "PPScoredExtractionSet: Suppressing donation from %@ using algorithm %@ as it is not enabled.", buf, 0x16u);
LABEL_8:

    goto LABEL_9;
  }

  v7 = +[PPLocalLocationStore defaultStore];
  v8 = *(a1 + 48);
  v9 = *(*(a1 + 40) + 48);
  v10 = [v5 intValue];
  v11 = *(*(a1 + 40) + 8);
  v15 = 0;
  LOBYTE(v9) = [v7 donateLocations:v6 source:v9 contextualNamedEntities:v8 algorithm:v10 cloudSync:v11 error:&v15];
  v12 = v15;

  if ((v9 & 1) == 0)
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPScoredExtractionSet failed to donate derived locations: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  *(*(*(a1 + 56) + 8) + 24) += [v6 count];
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(PPSource *)self->_source documentId];
  v5 = [v3 initWithFormat:@"<PPScoredExtractionSet doc:%@ n:%tu na:%tu t:%tu ta:%tu l:%tu>", v4, -[NSArray count](self->_entities, "count"), self->_entityAlgorithm, -[NSArray count](self->_topics, "count"), self->_topicAlgorithm, -[NSMutableDictionary count](self->_locations, "count")];

  return v5;
}

@end