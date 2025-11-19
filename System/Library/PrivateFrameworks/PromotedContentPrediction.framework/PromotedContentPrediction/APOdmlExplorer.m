@interface APOdmlExplorer
- (APOdmlExplorer)initWithRankableObjects:(id)a3 pttrArray:(id)a4 assetManager:(id)a5;
- (id)cumulativeEpsilonGreedyProbabilityDistribution;
- (id)epsilonGreedyProbabilityDistribution;
- (id)explore;
- (id)greedy;
- (id)randomizedResponse;
- (id)rankableObjectsFromSortable;
- (id)sortableArray:(id)a3 pttrArray:(id)a4;
@end

@implementation APOdmlExplorer

- (APOdmlExplorer)initWithRankableObjects:(id)a3 pttrArray:(id)a4 assetManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = APOdmlExplorer;
  v11 = [(APOdmlExplorer *)&v30 init];
  v13 = v11;
  if (v11)
  {
    v14 = objc_msgSend_sortableArray_pttrArray_(v11, v12, v8, v9);
    sortableObjects = v13->_sortableObjects;
    v13->_sortableObjects = v14;

    v17 = objc_msgSend_doubleValueForFactor_(v10, v16, @"EpsilonDP");
    epsilon = v13->_epsilon;
    v13->_epsilon = v17;

    v20 = objc_msgSend_stringValueForFactor_(v10, v19, @"ExploreMode");
    mode = v13->_mode;
    v13->_mode = v20;

    v23 = objc_msgSend_stringValueForFactor_(v10, v22, @"ExploreNoiseType");
    noise_type = v13->_noise_type;
    v13->_noise_type = v23;

    v26 = objc_msgSend_doubleValueForFactor_(v10, v25, @"ExploreClippingBound");
    clipping_bound = v13->_clipping_bound;
    v13->_clipping_bound = v26;

    v28 = time(0);
    srand48(v28);
  }

  return v13;
}

- (id)sortableArray:(id)a3 pttrArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  if (objc_msgSend_count(v6, v10, v11))
  {
    v12 = 0;
    do
    {
      v13 = [APOdmlSortableObject alloc];
      v15 = objc_msgSend_objectAtIndexedSubscript_(v5, v14, v12);
      v17 = objc_msgSend_objectAtIndexedSubscript_(v6, v16, v12);
      v19 = objc_msgSend_initWithRankable_andPTTR_(v13, v18, v15, v17);

      objc_msgSend_addObject_(v9, v20, v19);
      ++v12;
    }

    while (v12 < objc_msgSend_count(v6, v21, v22));
  }

  return v9;
}

- (id)explore
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_mode(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"greedy");

  if (isEqualToString)
  {
    v9 = objc_msgSend_greedy(self, v7, v8);
  }

  else
  {
    v10 = objc_msgSend_mode(self, v7, v8);
    v12 = objc_msgSend_isEqualToString_(v10, v11, @"randomized-response");

    if (v12)
    {
      v9 = objc_msgSend_randomizedResponse(self, v13, v14);
    }

    else
    {
      v15 = OdmlLogForCategory(5uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = objc_opt_class();
        v16 = v22;
        _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Exploration error: exploration type not found.", &v21, 0xCu);
      }

      v9 = objc_msgSend_rankableObjectsFromSortable(self, v17, v18);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)randomizedResponse
{
  v4 = objc_msgSend_cumulativeEpsilonGreedyProbabilityDistribution(self, a2, v2);
  v5 = drand48();
  if (objc_msgSend_count(v4, v6, v7))
  {
    v10 = 0;
    while (1)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(v4, v8, v10);
      objc_msgSend_doubleValue(v11, v12, v13);
      v15 = v14;

      if (v5 < v15)
      {
        break;
      }

      if (++v10 >= objc_msgSend_count(v4, v8, v9))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  v16 = MEMORY[0x277CBEB18];
  v17 = objc_msgSend_sortableObjects(self, v8, v9);
  v19 = objc_msgSend_arrayWithArray_(v16, v18, v17);

  v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, 0);
  v23 = objc_msgSend_objectAtIndexedSubscript_(v19, v22, v10);
  objc_msgSend_setObject_atIndexedSubscript_(v19, v24, v23, 0);

  objc_msgSend_setObject_atIndexedSubscript_(v19, v25, v21, v10);
  objc_msgSend_setSortableObjects_(self, v26, v19);
  v29 = objc_msgSend_rankableObjectsFromSortable(self, v27, v28);

  return v29;
}

- (id)cumulativeEpsilonGreedyProbabilityDistribution
{
  v3 = objc_msgSend_epsilonGreedyProbabilityDistribution(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5) >= 2)
  {
    v8 = 1;
    do
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(v3, v6, v8);
      objc_msgSend_doubleValue(v9, v10, v11);
      v13 = v12;
      v15 = objc_msgSend_objectAtIndexedSubscript_(v3, v14, v8 - 1);
      objc_msgSend_doubleValue(v15, v16, v17);
      v19 = v13 + v18;

      v22 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v20, v21, v19);
      objc_msgSend_setObject_atIndexedSubscript_(v3, v23, v22, v8);

      ++v8;
    }

    while (v8 < objc_msgSend_count(v3, v24, v25));
  }

  v26 = objc_msgSend_copy(v3, v6, v7);

  return v26;
}

- (id)epsilonGreedyProbabilityDistribution
{
  v4 = objc_msgSend_sortableObjects(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  v10 = objc_msgSend_sortableObjects(self, v8, v9);
  objc_msgSend_shuffle(v10, v11, v12);

  v15 = objc_msgSend_sortableObjects(self, v13, v14);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);
  v20 = objc_msgSend_pTTR(v17, v18, v19);

  v23 = objc_msgSend_sortableObjects(self, v21, v22);
  v26 = objc_msgSend_count(v23, v24, v25);

  if (v26)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = objc_msgSend_sortableObjects(self, v27, v28);
      v33 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, v30);
      v36 = objc_msgSend_pTTR(v33, v34, v35);

      objc_msgSend_doubleValue(v36, v37, v38);
      v40 = v39;
      objc_msgSend_doubleValue(v20, v41, v42);
      if (v40 > v43)
      {
        v44 = v36;

        v20 = v44;
        v29 = v30;
      }

      ++v30;
      v47 = objc_msgSend_sortableObjects(self, v45, v46);
      v50 = objc_msgSend_count(v47, v48, v49);
    }

    while (v30 < v50);
    v51 = v29;
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28);
  v55 = objc_msgSend_epsilon(self, v53, v54);
  objc_msgSend_doubleValue(v55, v56, v57);
  v59 = exp(v58);

  v62 = objc_msgSend_sortableObjects(self, v60, v61);
  v65 = objc_msgSend_count(v62, v63, v64);

  if (v65)
  {
    v68 = 0;
    v69 = v59 + (v7 - 1);
    do
    {
      v70 = 1.0;
      if (v51 == v68)
      {
        v71 = objc_msgSend_epsilon(self, v66, v67);
        objc_msgSend_doubleValue(v71, v72, v73);
        v70 = exp(v74);
      }

      v75 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v66, v67, v70 / v69);
      objc_msgSend_addObject_(v52, v76, v75);

      ++v68;
      v79 = objc_msgSend_sortableObjects(self, v77, v78);
      v82 = objc_msgSend_count(v79, v80, v81);
    }

    while (v68 < v82);
  }

  return v52;
}

- (id)greedy
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sortableObjects(self, a2, v2);
  v6 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v5, @"pTTR", 0);
  v15[0] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v15, 1);
  objc_msgSend_sortUsingDescriptors_(v4, v9, v8);

  v12 = objc_msgSend_rankableObjectsFromSortable(self, v10, v11);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)rankableObjectsFromSortable
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_sortableObjects(self, a2, v2);
  v8 = objc_msgSend_count(v5, v6, v7);
  v10 = objc_msgSend_arrayWithCapacity_(v4, v9, v8);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = objc_msgSend_sortableObjects(self, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v28, v32, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = objc_msgSend_rankable(*(*(&v28 + 1) + 8 * i), v16, v17);
        objc_msgSend_addObject_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v28, v32, 16);
    }

    while (v18);
  }

  v25 = objc_msgSend_copy(v10, v23, v24);
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

@end