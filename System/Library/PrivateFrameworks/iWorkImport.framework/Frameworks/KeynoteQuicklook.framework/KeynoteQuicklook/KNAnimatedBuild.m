@interface KNAnimatedBuild
- (BOOL)hasFinalActionRotate;
- (BOOL)hasFinalActionScale;
- (BOOL)hasPreviousActionAttributes;
- (BOOL)hasPreviousActionRotate;
- (BOOL)hasPreviousActionScale;
- (BOOL)isBuildByObject;
- (BOOL)isDriftBuild;
- (BOOL)isEmphasisBuild;
- (BOOL)isImplicitlyVisibleAtBeginning;
- (BOOL)isMagicChartBuild;
- (BOOL)isRelatedTo:(id)a3;
- (BOOL)isSiblingTo:(id)a3;
- (BOOL)p_isActionEffect:(id)a3;
- (KNAnimatedBuild)initWithBuildType:(int64_t)a3 effectIdentifier:(id)a4 attributes:(id)a5 pluginClass:(Class)a6 deliveryStyle:(unint64_t)a7 deliveryOption:(unint64_t)a8 eventIndex:(int64_t)a9 stageIndex:(int64_t)a10 startTime:(double)a11 eventStartTime:(double)a12 duration:(double)a13 direction:(unint64_t)a14 automatic:(BOOL)a15 animateAtEndOfPreviousBuild:(BOOL)a16 parentBuild:(id)a17;
- (KNAnimatedBuild)initWithCoder:(id)a3;
- (KNAnimatedBuild)parentBuild;
- (NSArray)requiredScales;
- (double)durationWithChildren;
- (double)finalRotation;
- (double)finalScale;
- (double)initialRotation;
- (double)initialScale;
- (double)maxScale;
- (id)description;
- (void)addChildBuild:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KNAnimatedBuild

- (KNAnimatedBuild)initWithBuildType:(int64_t)a3 effectIdentifier:(id)a4 attributes:(id)a5 pluginClass:(Class)a6 deliveryStyle:(unint64_t)a7 deliveryOption:(unint64_t)a8 eventIndex:(int64_t)a9 stageIndex:(int64_t)a10 startTime:(double)a11 eventStartTime:(double)a12 duration:(double)a13 direction:(unint64_t)a14 automatic:(BOOL)a15 animateAtEndOfPreviousBuild:(BOOL)a16 parentBuild:(id)a17
{
  v26 = a4;
  v27 = a5;
  v28 = a17;
  v41.receiver = self;
  v41.super_class = KNAnimatedBuild;
  v29 = [(KNAnimatedBuild *)&v41 init];
  v32 = v29;
  if (v29)
  {
    v29->_buildType = a3;
    v33 = objc_msgSend_copy(v26, v30, v31);
    effectIdentifier = v32->_effectIdentifier;
    v32->_effectIdentifier = v33;

    v32->_eventIndex = a9;
    v32->_startTime = a11;
    v32->_eventStartTime = a12;
    v32->_duration = a13;
    v32->_endTime = a11 + a13;
    v32->_eventEndTime = a12 + a13;
    v32->_automatic = a15;
    v32->_animateAtEndOfPreviousBuild = a16;
    v32->_stageIndex = a10;
    v32->_direction = a14;
    v32->_parentBuild = v28;
    objc_msgSend_addChildBuild_(v28, v35, v32);
    v38 = objc_msgSend_copy(v27, v36, v37);
    attributes = v32->_attributes;
    v32->_attributes = v38;

    objc_storeStrong(&v32->_pluginClass, a6);
    v32->_deliveryOption = a8;
    v32->_deliveryStyle = a7;
  }

  return v32;
}

- (id)description
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2);
  v5 = v4;
  childBuilds = self->_childBuilds;
  if (childBuilds)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_275DA15FC;
    v32[3] = &unk_27A697E68;
    v33 = v4;
    objc_msgSend_enumerateObjectsUsingBlock_(childBuilds, v7, v32);
  }

  v29 = MEMORY[0x277CCACA8];
  v30 = v5;
  v31.receiver = self;
  v31.super_class = KNAnimatedBuild;
  v28 = [(KNAnimatedBuild *)&v31 description];
  v8 = KNAnimationTypeAsString();
  v11 = NSStringFromClass(self->_pluginClass);
  effectIdentifier = self->_effectIdentifier;
  eventIndex = self->_eventIndex;
  stageIndex = self->_stageIndex;
  startTime = self->_startTime;
  eventStartTime = self->_eventStartTime;
  duration = self->_duration;
  endTime = self->_endTime;
  eventEndTime = self->_eventEndTime;
  automatic = self->_automatic;
  animateAtEndOfPreviousBuild = self->_animateAtEndOfPreviousBuild;
  isVisibleAtBeginning = self->_isVisibleAtBeginning;
  isVisibleAtEnd = self->_isVisibleAtEnd;
  v24 = self->_childBuilds;
  if (v24)
  {
    v25 = self->_effectIdentifier;
    v24 = objc_msgSend_count(v24, v9, v10);
    effectIdentifier = v25;
  }

  v26 = objc_msgSend_stringWithFormat_(v29, v9, @"<%@: %@ %@(%@) event(%zd), stage(%zd) start(%.1f) eventStart(%.1f) duration(%.1f) end(%.1f) eventEnd(%.1f) automatic(%d) animateAtEndOfPrevious(%d) isVisibleAtBeginning(%d) isVisibleAtEnd(%d) childBuilds(%lu)>%@", v28, v8, v11, effectIdentifier, eventIndex, stageIndex, *&startTime, *&eventStartTime, *&duration, *&endTime, *&eventEndTime, automatic, animateAtEndOfPreviousBuild, isVisibleAtBeginning, isVisibleAtEnd, v24, v30);

  return v26;
}

- (BOOL)isEmphasisBuild
{
  pluginClass = self->_pluginClass;
  if (!objc_msgSend_conformsToProtocol_(pluginClass, a2, &unk_288546370) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return objc_msgSend_isEmphasisBuildAnimation(pluginClass, v3, v4);
}

- (BOOL)isDriftBuild
{
  pluginClass = self->_pluginClass;
  v3 = objc_msgSend_conformsToProtocol_(pluginClass, a2, &unk_2885461F0);
  if (v3)
  {

    LOBYTE(v3) = MEMORY[0x2821F9670](pluginClass, sel_isDriftAnimation, v4);
  }

  return v3;
}

- (BOOL)isMagicChartBuild
{
  pluginClass = self->_pluginClass;
  v3 = objc_msgSend_conformsToProtocol_(pluginClass, a2, &unk_288546430);
  if (v3)
  {

    LOBYTE(v3) = MEMORY[0x2821F9670](pluginClass, sel_isMagicChart, v4);
  }

  return v3;
}

- (BOOL)isImplicitlyVisibleAtBeginning
{
  pluginClass = self->_pluginClass;
  if (objc_msgSend_conformsToProtocol_(pluginClass, a2, &unk_288512898) && (objc_msgSend_startsAmbientAnimation(pluginClass, v4, v5) & 1) != 0)
  {
    return 1;
  }

  return objc_msgSend_isInitialAmbientBuild(self, v4, v5);
}

- (BOOL)isBuildByObject
{
  attributes = self->_attributes;
  if (!attributes)
  {
    return 1;
  }

  v3 = objc_msgSend_attributeValueForProperty_(attributes, a2, @"KNBuildCustomAttributesTextDelivery");
  if (!v3)
  {
    return 1;
  }

  v6 = v3;
  v7 = objc_msgSend_unsignedIntegerValue(v3, v4, v5) == 1;

  return v7;
}

- (KNAnimatedBuild)parentBuild
{
  if (self->_parentBuild)
  {
    self = self->_parentBuild;
  }

  return self;
}

- (double)durationWithChildren
{
  v30 = *MEMORY[0x277D85DE8];
  duration = self->_duration;
  if (objc_msgSend_isParentBuild(self, a2, v2))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_childBuilds;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v25, v29, 16);
    if (v7)
    {
      v10 = v7;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          objc_msgSend_startTime(v13, v8, v9, v25);
          v15 = v14;
          objc_msgSend_startTime(self, v16, v17);
          v19 = v15 - v18;
          objc_msgSend_duration(v13, v20, v21);
          v23 = v19 + v22;
          if (duration < v23)
          {
            duration = v23;
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v25, v29, 16);
      }

      while (v10);
    }
  }

  return duration;
}

- (BOOL)isSiblingTo:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isChildBuild(self, v5, v6) && objc_msgSend_isChildBuild(v4, v7, v8))
  {
    v11 = objc_msgSend_parentBuild(self, v9, v10);
    v14 = objc_msgSend_parentBuild(v4, v12, v13);
    v15 = v11 == v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isRelatedTo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_parentBuild(v4, v5, v6);
  if (v9 == self)
  {
    isSiblingTo = 1;
  }

  else
  {
    v11 = objc_msgSend_parentBuild(self, v7, v8);
    if (v11 == v4)
    {
      isSiblingTo = 1;
    }

    else
    {
      isSiblingTo = objc_msgSend_isSiblingTo_(self, v10, v4);
    }
  }

  return isSiblingTo;
}

- (void)addChildBuild:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (!self->_childBuilds)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = objc_msgSend_initWithCapacity_(v7, v8, 1);
    childBuilds = self->_childBuilds;
    self->_childBuilds = v9;

    v4 = v14;
  }

  eventEndTime = self->_eventEndTime;
  objc_msgSend_eventEndTime(v4, v5, v6);
  if (eventEndTime >= v13)
  {
    v13 = eventEndTime;
  }

  self->_eventEndTime = v13;
  objc_msgSend_addObject_(self->_childBuilds, v12, v14);
}

- (BOOL)p_isActionEffect:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_isEqual_(self->_effectIdentifier, v5, v4))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_childBuilds;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
    if (v6)
    {
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = objc_msgSend_effectIdentifier(*(*(&v17 + 1) + 8 * i), v9, v10, v17);
          isEqual = objc_msgSend_isEqual_(v13, v14, v4);

          if (isEqual)
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v17, v21, 16);
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v6;
}

- (BOOL)hasPreviousActionAttributes
{
  previousAttributes = self->_previousAttributes;
  if (previousAttributes)
  {
    LOBYTE(previousAttributes) = objc_msgSend_count(previousAttributes, a2, v2) != 0;
  }

  return previousAttributes;
}

- (BOOL)hasPreviousActionScale
{
  previousAttributes = self->_previousAttributes;
  if (!previousAttributes)
  {
    return 0;
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(previousAttributes, a2, *MEMORY[0x277D80110]);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasPreviousActionRotate
{
  previousAttributes = self->_previousAttributes;
  if (!previousAttributes)
  {
    return 0;
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(previousAttributes, a2, *MEMORY[0x277D80100]);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasFinalActionScale
{
  finalAttributes = self->_finalAttributes;
  if (!finalAttributes)
  {
    return 0;
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(finalAttributes, a2, *MEMORY[0x277D80110]);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasFinalActionRotate
{
  finalAttributes = self->_finalAttributes;
  if (!finalAttributes)
  {
    return 0;
  }

  v3 = objc_msgSend_objectForKeyedSubscript_(finalAttributes, a2, *MEMORY[0x277D80100]);
  v4 = v3 != 0;

  return v4;
}

- (double)initialScale
{
  v2 = objc_msgSend_objectForKey_(self->_previousAttributes, a2, *MEMORY[0x277D80110]);
  v5 = v2;
  if (v2)
  {
    objc_msgSend_doubleValue(v2, v3, v4);
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

- (double)finalScale
{
  v2 = objc_msgSend_objectForKey_(self->_finalAttributes, a2, *MEMORY[0x277D80110]);
  v5 = v2;
  if (v2)
  {
    objc_msgSend_doubleValue(v2, v3, v4);
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

- (double)maxScale
{
  v25 = *MEMORY[0x277D85DE8];
  objc_msgSend_initialScale(self, a2, v2);
  v5 = v4;
  objc_msgSend_finalScale(self, v6, v7);
  if (v5 < v8)
  {
    v5 = v8;
  }

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_childBuilds;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_isActionScale(v17, v12, v13, v20))
        {
          objc_msgSend_maxScale(v17, v12, v13);
          if (v5 < v18)
          {
            v5 = v18;
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
    }

    while (v14);
  }

  return v5;
}

- (NSArray)requiredScales
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_childBuilds;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v30, v34, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_isActionScale(v13, v8, v9, v30))
        {
          v14 = MEMORY[0x277CCABB0];
          objc_msgSend_finalScale(v13, v8, v9);
          v17 = objc_msgSend_numberWithDouble_(v14, v15, v16);
          if ((objc_msgSend_containsObject_(v4, v18, v17) & 1) == 0)
          {
            objc_msgSend_addObject_(v4, v19, v17);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v30, v34, 16);
    }

    while (v10);
  }

  if (objc_msgSend_isEqual_(self->_effectIdentifier, v20, *MEMORY[0x277D800E0]))
  {
    v23 = MEMORY[0x277CCABB0];
    objc_msgSend_finalScale(self, v21, v22);
    v26 = objc_msgSend_numberWithDouble_(v23, v24, v25);
    if ((objc_msgSend_containsObject_(v4, v27, v26) & 1) == 0)
    {
      objc_msgSend_addObject_(v4, v28, v26);
    }
  }

  return v4;
}

- (double)initialRotation
{
  v3 = objc_msgSend_objectForKey_(self->_previousAttributes, a2, *MEMORY[0x277D80100]);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_doubleValue(v3, v4, v5);
    v8 = v7 * 0.0174532925;
    v10 = objc_msgSend_objectForKey_(self->_previousAttributes, v9, *MEMORY[0x277D80108]);
    v13 = v10;
    if (v10 && objc_msgSend_integerValue(v10, v11, v12) == 32)
    {
      v8 = -v8;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)finalRotation
{
  v3 = objc_msgSend_objectForKey_(self->_previousAttributes, a2, *MEMORY[0x277D80100]);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_doubleValue(v3, v4, v5);
    v8 = v7 * 0.0174532925;
    v10 = objc_msgSend_objectForKey_(self->_previousAttributes, v9, *MEMORY[0x277D80108]);
    v13 = v10;
    if (v10 && objc_msgSend_integerValue(v10, v11, v12) == 32)
    {
      v8 = -v8;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  parentBuild = self->_parentBuild;
  v26 = a3;
  objc_msgSend_encodeObject_forKey_(v26, v5, parentBuild, @"_parentBuild");
  objc_msgSend_encodeObject_forKey_(v26, v6, self->_childBuilds, @"childBuilds");
  objc_msgSend_encodeInteger_forKey_(v26, v7, self->_buildType, @"buildType");
  objc_msgSend_encodeObject_forKey_(v26, v8, self->_effectIdentifier, @"effectIdentifier");
  objc_msgSend_encodeInteger_forKey_(v26, v9, self->_eventIndex, @"eventIndex");
  objc_msgSend_encodeInteger_forKey_(v26, v10, self->_indexInEvent, @"indexInEvent");
  objc_msgSend_encodeInteger_forKey_(v26, v11, self->_stageIndex, @"stageIndex");
  objc_msgSend_encodeInteger_forKey_(v26, v12, self->_direction, @"direction");
  objc_msgSend_encodeInteger_forKey_(v26, v13, self->_deliveryOption, @"deliveryOption");
  objc_msgSend_encodeInteger_forKey_(v26, v14, self->_deliveryStyle, @"deliveryStyle");
  objc_msgSend_encodeDouble_forKey_(v26, v15, @"startTime", self->_startTime);
  objc_msgSend_encodeDouble_forKey_(v26, v16, @"eventStartTime", self->_eventStartTime);
  objc_msgSend_encodeDouble_forKey_(v26, v17, @"duration", self->_duration);
  objc_msgSend_encodeDouble_forKey_(v26, v18, @"endTime", self->_endTime);
  objc_msgSend_encodeDouble_forKey_(v26, v19, @"eventEndTime", self->_eventEndTime);
  objc_msgSend_encodeBool_forKey_(v26, v20, self->_automatic, @"automatic");
  objc_msgSend_encodeBool_forKey_(v26, v21, self->_animateAtEndOfPreviousBuild, @"animateAtEndOfPreviousBuild");
  objc_msgSend_encodeBool_forKey_(v26, v22, self->_isVisibleAtBeginning, @"isVisibleAtBeginning");
  objc_msgSend_encodeBool_forKey_(v26, v23, self->_isVisibleAtEnd, @"isVisibleAtEnd");
  objc_msgSend_encodeBool_forKey_(v26, v24, self->_isLastStage, @"isLastStage");
  objc_msgSend_encodeBool_forKey_(v26, v25, self->_isInitialAmbientBuild, @"isInitialAmbientBuild");
}

- (KNAnimatedBuild)initWithCoder:(id)a3
{
  v3 = a3;
  v55 = objc_msgSend_decodeIntegerForKey_(v3, v4, @"buildType");
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v6, v5, @"effectIdentifier");
  v54 = objc_msgSend_decodeIntegerForKey_(v3, v8, @"deliveryStyle");
  v10 = objc_msgSend_decodeIntegerForKey_(v3, v9, @"deliveryOption");
  v12 = objc_msgSend_decodeIntegerForKey_(v3, v11, @"eventIndex");
  v14 = objc_msgSend_decodeIntegerForKey_(v3, v13, @"stageIndex");
  objc_msgSend_decodeDoubleForKey_(v3, v15, @"startTime");
  v17 = v16;
  objc_msgSend_decodeDoubleForKey_(v3, v18, @"eventStartTime");
  v20 = v19;
  objc_msgSend_decodeDoubleForKey_(v3, v21, @"duration");
  v23 = v22;
  v25 = objc_msgSend_decodeIntegerForKey_(v3, v24, @"direction");
  v27 = objc_msgSend_decodeBoolForKey_(v3, v26, @"automatic");
  v29 = objc_msgSend_decodeBoolForKey_(v3, v28, @"animateAtEndOfPreviousBuild");
  v30 = objc_opt_class();
  v32 = objc_msgSend_decodeObjectOfClass_forKey_(v3, v31, v30, @"_parentBuild");
  HIBYTE(v53) = v29;
  LOBYTE(v53) = v27;
  started = objc_msgSend_initWithBuildType_effectIdentifier_attributes_pluginClass_deliveryStyle_deliveryOption_eventIndex_stageIndex_startTime_eventStartTime_duration_direction_automatic_animateAtEndOfPreviousBuild_parentBuild_(self, v33, v55, v7, 0, 0, v54, v10, v17, v20, v23, v12, v14, v25, v53, v32);

  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v39 = objc_msgSend_setWithObjects_(v35, v38, v36, v37, 0);
  v41 = objc_msgSend_decodeObjectOfClasses_forKey_(v3, v40, v39, @"childBuilds");
  v42 = *(started + 160);
  *(started + 160) = v41;

  *(started + 48) = objc_msgSend_decodeIntegerForKey_(v3, v43, @"indexInEvent");
  objc_msgSend_decodeDoubleForKey_(v3, v44, @"endTime");
  *(started + 128) = v45;
  objc_msgSend_decodeDoubleForKey_(v3, v46, @"eventEndTime");
  *(started + 136) = v47;
  *(started + 18) = objc_msgSend_decodeBoolForKey_(v3, v48, @"isVisibleAtBeginning");
  *(started + 19) = objc_msgSend_decodeBoolForKey_(v3, v49, @"isVisibleAtEnd");
  *(started + 20) = objc_msgSend_decodeBoolForKey_(v3, v50, @"isLastStage");
  LOBYTE(v39) = objc_msgSend_decodeBoolForKey_(v3, v51, @"isInitialAmbientBuild");

  *(started + 21) = v39;
  return started;
}

@end