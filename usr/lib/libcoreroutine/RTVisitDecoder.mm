@interface RTVisitDecoder
- (RTVisitDecoder)initWithHyperParameter:(id)parameter;
- (id)createSuccessor:(id)successor probabilities:(const float *)probabilities firstTimeStepDate:(id)date currentDate:(id)currentDate;
- (id)decodeWithProbabilities:(const float *)probabilities batchSize:(unint64_t)size firstTimeStepDate:(id)date;
- (void)updateSuccessor:(id)successor newNode:(id)node;
@end

@implementation RTVisitDecoder

- (RTVisitDecoder)initWithHyperParameter:(id)parameter
{
  parameterCopy = parameter;
  v9.receiver = self;
  v9.super_class = RTVisitDecoder;
  v6 = [(RTVisitDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hyperParameter, parameter);
  }

  return v7;
}

- (void)updateSuccessor:(id)successor newNode:(id)node
{
  successorCopy = successor;
  nodeCopy = node;
  v7 = nodeCopy;
  if (successorCopy)
  {
    outputType = [nodeCopy outputType];
    if (outputType)
    {
      v9 = outputType;
      v10 = [successorCopy objectForKeyedSubscript:outputType];
      v11 = v10;
      if (!v10 || ([v10 logProbability], v13 = v12, objc_msgSend(v7, "logProbability"), v13 < v14))
      {
        [successorCopy setObject:v7 forKeyedSubscript:v9];
      }
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key", v16, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: successor", buf, 2u);
    }
  }
}

- (id)createSuccessor:(id)successor probabilities:(const float *)probabilities firstTimeStepDate:(id)date currentDate:(id)currentDate
{
  v62 = *MEMORY[0x277D85DE8];
  successorCopy = successor;
  dateCopy = date;
  currentDateCopy = currentDate;
  v13 = objc_opt_new();
  if (!successorCopy)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: beam";
    goto LABEL_35;
  }

  if (!probabilities)
  {
    obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: probabilities";
    goto LABEL_35;
  }

  if (dateCopy)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = successorCopy;
    v14 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (!v14)
    {
      goto LABEL_36;
    }

    v15 = v14;
    v52 = successorCopy;
    v53 = currentDateCopy;
    v55 = *v57;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v57 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v56 + 1) + 8 * i);
        v18 = *probabilities;
        v19 = (probabilities[1] + probabilities[2]);
        v20 = probabilities[3];
        entryDate = [v17 entryDate];
        v22 = [entryDate isBeforeDate:dateCopy];

        if (v22)
        {
          v20 = v18 + v20;
        }

        if ([v17 noVisit])
        {
          [(RTVisitHyperParameter *)self->_hyperParameter minNoVisitProbability];
          if (v23 <= v18)
          {
            v24 = [RTVisitDecoded alloc];
            [v17 logProbability];
            v26 = [(RTVisitDecoded *)v24 initWithEntryDate:0 exitDate:0 logProbability:(log(v18) + v25)];
            [(RTVisitDecoder *)self updateSuccessor:v13 newNode:v26];
          }

          [(RTVisitHyperParameter *)self->_hyperParameter minEntryProbability];
          if (v27 <= v19)
          {
            v28 = [RTVisitDecoded alloc];
            [v17 logProbability];
            v30 = log(v19) + v29;
            [(RTVisitHyperParameter *)self->_hyperParameter decoderEntryCost];
            v32 = [(RTVisitDecoded *)v28 initWithEntryDate:currentDateCopy exitDate:0 logProbability:(v30 - v31)];
            goto LABEL_25;
          }
        }

        else if ([v17 partialVisit])
        {
          [(RTVisitHyperParameter *)self->_hyperParameter minEntryProbability];
          if (v33 <= v19)
          {
            v34 = [RTVisitDecoded alloc];
            entryDate2 = [v17 entryDate];
            [v17 logProbability];
            v37 = [(RTVisitDecoded *)v34 initWithEntryDate:entryDate2 exitDate:0 logProbability:(log(v19) + v36)];

            [(RTVisitDecoder *)self updateSuccessor:v13 newNode:v37];
          }

          [(RTVisitHyperParameter *)self->_hyperParameter minExitProbability];
          if (v20 >= v38)
          {
            v39 = [RTVisitDecoded alloc];
            entryDate3 = [v17 entryDate];
            [v17 logProbability];
            v42 = log(v20) + v41;
            [(RTVisitHyperParameter *)self->_hyperParameter decoderExitCost];
            v32 = [(RTVisitDecoded *)v39 initWithEntryDate:entryDate3 exitDate:currentDateCopy logProbability:(v42 - v43)];
            goto LABEL_24;
          }
        }

        else if ([v17 completeVisit])
        {
          [(RTVisitHyperParameter *)self->_hyperParameter minExitProbability];
          if (v20 >= v44)
          {
            v45 = [RTVisitDecoded alloc];
            entryDate3 = [v17 entryDate];
            [v17 exitDate];
            v46 = dateCopy;
            v48 = v47 = v13;
            [v17 logProbability];
            v32 = [(RTVisitDecoded *)v45 initWithEntryDate:entryDate3 exitDate:v48 logProbability:(log(v20) + v49)];

            v13 = v47;
            dateCopy = v46;
            currentDateCopy = v53;
LABEL_24:

LABEL_25:
            [(RTVisitDecoder *)self updateSuccessor:v13 newNode:v32];

            continue;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (!v15)
      {
        successorCopy = v52;
        goto LABEL_36;
      }
    }
  }

  obj = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v50 = "Invalid parameter not satisfying: firstTimeStepDate";
LABEL_35:
    _os_log_error_impl(&dword_2304B3000, obj, OS_LOG_TYPE_ERROR, v50, buf, 2u);
  }

LABEL_36:

  return v13;
}

- (id)decodeWithProbabilities:(const float *)probabilities batchSize:(unint64_t)size firstTimeStepDate:(id)date
{
  v44[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v9 = dateCopy;
  if (!probabilities)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_30:

LABEL_31:
      v14 = 0;
      goto LABEL_32;
    }

    *buf = 0;
    v31 = "Invalid parameter not satisfying: probabilities";
LABEL_37:
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, v31, buf, 2u);
    goto LABEL_30;
  }

  if (!dateCopy)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v31 = "Invalid parameter not satisfying: firstTimeStepDate";
    goto LABEL_37;
  }

  if (!self->_beam)
  {
    v10 = objc_opt_new();
    v44[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    beam = self->_beam;
    self->_beam = v11;
  }

  if (!size)
  {
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  *&v8 = 138412290;
  v33 = v8;
  v34 = v9;
  while (1)
  {
    v36 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:{(-[RTVisitHyperParameter visitInferenceResolution](self->_hyperParameter, "visitInferenceResolution", v33) * v13 * -[RTVisitHyperParameter timeStepInterval](self->_hyperParameter, "timeStepInterval"))}];
    v15 = [(RTVisitDecoder *)self createSuccessor:self->_beam probabilities:probabilities firstTimeStepDate:v9 currentDate:?];
    if ([v15 count])
    {
      allValues = [v15 allValues];
      p_super = &self->_beam->super;
      self->_beam = allValues;
    }

    else
    {
      p_super = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v29 = self->_beam;
        *buf = v33;
        v43 = v29;
        _os_log_error_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_ERROR, "no successor for beam=%@", buf, 0xCu);
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = self->_beam;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v14 = 0;
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v37 + 1) + 8 * i);
          if (v14)
          {
            [v14 logProbability];
            v25 = v24;
            [v23 logProbability];
            if (v25 < v26)
            {
              v27 = v23;

              v14 = v27;
            }
          }

          else
          {
            v14 = v23;
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v20);
    }

    else
    {
      v14 = 0;
    }

    completeVisit = [v14 completeVisit];
    if (completeVisit)
    {
      break;
    }

    probabilities += 4;
    ++v13;
    v9 = v34;
    if (v13 == size)
    {
      goto LABEL_32;
    }
  }

  v9 = v34;
LABEL_32:

  return v14;
}

@end