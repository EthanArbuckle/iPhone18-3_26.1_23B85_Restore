@interface PTPersonWithReactions
- (NSArray)reactions;
- (PTPersonWithReactions)initWithIdentifier:(id)identifier;
- (id)createReactionWithType:(unint64_t)type;
- (void)_stopActiveGestureOnSlot:(id)slot;
- (void)_updateReactionSlot:(id)slot withOneHand:(id)hand optionalOtherHand:(id)otherHand timeStamp:(id *)stamp;
- (void)updateWithLeftHand:(id)hand rightHand:(id)rightHand timeStamp:(id *)stamp;
@end

@implementation PTPersonWithReactions

- (PTPersonWithReactions)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v29.receiver = self;
  v29.super_class = PTPersonWithReactions;
  v6 = [(PTPersonWithReactions *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v7->_numFramesInactive = 0;
    v8 = MEMORY[0x277CC0898];
    *&v7->_lastTwoHandReactionEndTime.value = *MEMORY[0x277CC0898];
    v7->_lastTwoHandReactionEndTime.epoch = *(v8 + 16);
    v9 = [PTPersonReactionSlot alloc];
    LODWORD(v10) = 1128136704;
    LODWORD(v11) = 1128136704;
    v12 = [(PTPersonReactionSlot *)v9 initWithStartTime:v10 stopTime:v11];
    leftHandSlot = v7->_leftHandSlot;
    v7->_leftHandSlot = v12;

    v14 = [PTPersonReactionSlot alloc];
    LODWORD(v15) = 1128136704;
    LODWORD(v16) = 1128136704;
    v17 = [(PTPersonReactionSlot *)v14 initWithStartTime:v15 stopTime:v16];
    rightHandSlot = v7->_rightHandSlot;
    v7->_rightHandSlot = v17;

    v19 = [PTPersonReactionSlot alloc];
    LODWORD(v20) = 1128136704;
    LODWORD(v21) = 1128136704;
    v22 = [(PTPersonReactionSlot *)v19 initWithStartTime:v20 stopTime:v21];
    bothHandsSlot = v7->_bothHandsSlot;
    v7->_bothHandsSlot = v22;

    v7->_bothHandsDetected = 0;
    v24 = [PTHandGesture alloc];
    v25 = [(PTHandGesture *)v24 initWithType:0 chirality:1 boundingBox:&unk_2837F39E0 confidence:&unk_2837F2DE8 personID:&unk_2837F2DE8 handID:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
    unknownGesture = v7->_unknownGesture;
    v7->_unknownGesture = v25;

    v27 = v7;
  }

  return v7;
}

- (NSArray)reactions
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v10 = self->_leftHandSlot;
  v11 = self->_rightHandSlot;
  v4 = 0;
  v12 = self->_bothHandsSlot;
  do
  {
    v5 = *(&v10 + v4);
    v6 = [(PTPersonReactionSlot *)v5 reaction:v10];

    if (v6)
    {
      reaction = [(PTPersonReactionSlot *)v5 reaction];
      [v3 addObject:reaction];
    }

    v4 += 8;
  }

  while (v4 != 24);
  for (i = 16; i != -8; i -= 8)
  {
  }

  return v3;
}

- (void)_stopActiveGestureOnSlot:(id)slot
{
  slotCopy = slot;
  [slotCopy setActiveGestureType:0];
  v6 = *MEMORY[0x277CC0898];
  v5 = v6;
  v7 = *(MEMORY[0x277CC0898] + 16);
  v4 = v7;
  [slotCopy setActiveGestureLastSeenTime:&v6];
  v6 = v5;
  v7 = v4;
  [slotCopy setLatestGestureFirstSeenTime:&v6];
}

- (void)updateWithLeftHand:(id)hand rightHand:(id)rightHand timeStamp:(id *)stamp
{
  handCopy = hand;
  rightHandCopy = rightHand;
  if (handCopy | rightHandCopy)
  {
    v10 = rightHandCopy;
    if (handCopy)
    {
      v11 = rightHandCopy == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    self->_bothHandsDetected = v12;
    if (handCopy)
    {
      if (rightHandCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      handCopy = self->_unknownGesture;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v10 = self->_unknownGesture;
LABEL_10:
    if (self->_bothHandsDetected)
    {
      v13 = [handCopy fpMitigation] == 8 || -[PTHandGesture fpMitigation](v10, "fpMitigation") == 8;
      v14 = [handCopy fpMitigation] == 9 || -[PTHandGesture fpMitigation](v10, "fpMitigation") == 9;
      if ((-[PTHandGesture type](v10, "type") == 2 || -[PTHandGesture type](v10, "type") == 3 || [handCopy type] == 2 || objc_msgSend(handCopy, "type") == 3) && (v13 || v14))
      {
        v15 = self->_unknownGesture;

        v16 = self->_unknownGesture;
        v10 = v16;
        handCopy = v15;
      }
    }

    bothHandsSlot = self->_bothHandsSlot;
    v20 = *&stamp->var0;
    var3 = stamp->var3;
    [(PTPersonWithReactions *)self _updateReactionSlot:bothHandsSlot withOneHand:v10 optionalOtherHand:handCopy timeStamp:&v20];
    leftHandSlot = self->_leftHandSlot;
    v20 = *&stamp->var0;
    var3 = stamp->var3;
    [(PTPersonWithReactions *)self _updateReactionSlot:leftHandSlot withOneHand:handCopy optionalOtherHand:0 timeStamp:&v20];
    rightHandSlot = self->_rightHandSlot;
    v20 = *&stamp->var0;
    var3 = stamp->var3;
    [(PTPersonWithReactions *)self _updateReactionSlot:rightHandSlot withOneHand:v10 optionalOtherHand:0 timeStamp:&v20];

    goto LABEL_28;
  }

  handCopy = _PTLogSystem();
  if (os_log_type_enabled(handCopy, OS_LOG_TYPE_ERROR))
  {
    [PTPersonWithReactions updateWithLeftHand:handCopy rightHand:? timeStamp:?];
  }

LABEL_28:
}

- (id)createReactionWithType:(unint64_t)type
{
  v5 = objc_alloc_init(PTEffectReaction);
  [(PTEffectReaction *)v5 setEffectType:type];
  [(PTEffectReaction *)v5 setTriggerID:(*self->_reactionTriggerID)++];

  return v5;
}

- (void)_updateReactionSlot:(id)slot withOneHand:(id)hand optionalOtherHand:(id)otherHand timeStamp:(id *)stamp
{
  v71 = *MEMORY[0x277D85DE8];
  slotCopy = slot;
  handCopy = hand;
  otherHandCopy = otherHand;
  type = [handCopy type];
  latestGestureType = [(PTPersonReactionSlot *)slotCopy latestGestureType];
  activeGestureType = [(PTPersonReactionSlot *)slotCopy activeGestureType];
  [handCopy boundingBox];
  MidX = CGRectGetMidX(v72);
  [handCopy boundingBox];
  MidY = CGRectGetMidY(v73);
  v17.f64[0] = MidX;
  v17.f64[1] = MidY;
  v18 = vcvt_f32_f64(v17);
  if (!activeGestureType)
  {
    if (otherHandCopy)
    {
      if (CanTriggerTwoHandReaction(handCopy, otherHandCopy, 0.7))
      {
        type = type;
      }

      else
      {
        type = 0;
      }
    }

    else
    {
      if ((type & 0xFFFFFFFE) == 2)
      {
        if (self->_bothHandsDetected)
        {
          v25 = *"fff?";
        }

        else
        {
          v25 = 0.8;
        }
      }

      else
      {
        v25 = 0.7;
      }

      confidence = [handCopy confidence];
      [confidence floatValue];
      v38 = v37;

      if (v38 >= v25)
      {
        type = type;
      }

      else
      {
        type = 0;
      }
    }

    [(PTPersonReactionSlot *)slotCopy setLatestGestureType:type];
    if (latestGestureType == type && (latestGestureType - 1 < 4 || latestGestureType == 6))
    {
      if (slotCopy)
      {
        [(PTPersonReactionSlot *)slotCopy latestGestureFirstSeenTime];
        if ((v68 & 0x100000000) != 0)
        {
          [(PTPersonReactionSlot *)slotCopy latestGestureFirstSeenTime];
          v66 = *stamp;
          DurationMilliseconds = GetDurationMilliseconds(time, &v66);
          [(PTPersonReactionSlot *)slotCopy milliSecondsToStart];
          v41 = v40;
          if (!otherHandCopy)
          {
            if (self->_bothHandsDetected && (latestGestureType - 1 < 4 || latestGestureType == 6))
            {
              v41 = v40 + v40;
            }

            if (latestGestureType == self->_lastTwoHandReactionType)
            {
              if (self->_lastTwoHandReactionEndTime.flags)
              {
                *time = *&self->_lastTwoHandReactionEndTime.value;
                *&time[16] = self->_lastTwoHandReactionEndTime.epoch;
                v66 = *stamp;
                v42 = GetDurationMilliseconds(time, &v66);
              }

              else
              {
                v42 = 2000.0;
              }

              v41 = v41 + fmaxf(2000.0 - v42, 0.0);
            }
          }

          v43 = v41 + 400.0;
          if (latestGestureType != 1)
          {
            v43 = v41;
          }

          if (DurationMilliseconds <= v43)
          {
            goto LABEL_49;
          }

          [(PTPersonReactionSlot *)slotCopy setActiveGestureType:[(PTPersonReactionSlot *)slotCopy latestGestureType]];
          [(PTPersonReactionSlot *)slotCopy latestGestureFirstSeenTime];
          *time = v64;
          *&time[16] = v65;
          [(PTPersonReactionSlot *)slotCopy setActiveGestureLastSeenTime:time];
          v44 = [(PTPersonReactionSlot *)slotCopy activeGestureType]- 1;
          if (otherHandCopy)
          {
            if (v44 > 5 || ((0x2Fu >> v44) & 1) == 0)
            {
              goto LABEL_49;
            }

            v45 = [(PTPersonWithReactions *)self createReactionWithType:qword_2244A5590[v44]];
            [(PTPersonReactionSlot *)slotCopy setReaction:v45];

            [otherHandCopy boundingBox];
            v63 = CGRectGetMidX(v76);
            [otherHandCopy boundingBox];
            v46 = CGRectGetMidY(v77);
            v47.f64[0] = v63;
            v47.f64[1] = v46;
            v48 = COERCE_DOUBLE(vmul_f32(vadd_f32(v18, vcvt_f32_f64(v47)), 0x3F0000003F000000));
            reaction = [(PTPersonReactionSlot *)slotCopy reaction];
            [reaction setPosition:v48];

            [(PTPersonReactionSlot *)self->_leftHandSlot setReaction:0];
            [(PTPersonReactionSlot *)self->_rightHandSlot setReaction:0];
            v50 = _PTLogSystem();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
LABEL_63:
              reaction2 = [(PTPersonReactionSlot *)slotCopy reaction];
              emoji = [reaction2 emoji];
              intValue = [(NSNumber *)self->_identifier intValue];
              *time = *&stamp->var0;
              *&time[16] = stamp->var3;
              Seconds = CMTimeGetSeconds(time);
              *time = 138412802;
              *&time[4] = emoji;
              *&time[12] = 1024;
              *&time[14] = intValue;
              *&time[18] = 2048;
              *&time[20] = Seconds;
              _os_log_impl(&dword_2243FB000, v50, OS_LOG_TYPE_DEFAULT, "ReactionProvider: Created Reaction with (type: %@) (personID: %i) (time: %.2f)", time, 0x1Cu);
            }
          }

          else
          {
            if (v44 > 2)
            {
              goto LABEL_49;
            }

            v51 = qword_2244A55C0[v44];
            reaction3 = [(PTPersonReactionSlot *)self->_bothHandsSlot reaction];

            if (reaction3)
            {
              goto LABEL_49;
            }

            v53 = [(PTPersonWithReactions *)self createReactionWithType:v51];
            [(PTPersonReactionSlot *)slotCopy setReaction:v53];

            reaction4 = [(PTPersonReactionSlot *)slotCopy reaction];
            [reaction4 setPosition:*&v18];

            v55 = [handCopy handChirality] != 1;
            reaction5 = [(PTPersonReactionSlot *)slotCopy reaction];
            [reaction5 setOrientation:v55];

            v50 = _PTLogSystem();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_63;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
      }
    }

    *time = *&stamp->var0;
    *&time[16] = stamp->var3;
    [(PTPersonReactionSlot *)slotCopy setLatestGestureFirstSeenTime:time];
    goto LABEL_49;
  }

  if (otherHandCopy)
  {
    if (CanTriggerTwoHandReaction(handCopy, otherHandCopy, 0.5))
    {
      v19 = type;
    }

    else
    {
      v19 = 0;
    }

    [(PTPersonReactionSlot *)slotCopy setLatestGestureType:v19];
    if (activeGestureType == v19)
    {
      [otherHandCopy boundingBox];
      v62 = CGRectGetMidX(v74);
      [otherHandCopy boundingBox];
      v20 = CGRectGetMidY(v75);
      v21.f64[0] = v62;
      v21.f64[1] = v20;
      v18 = vmul_f32(vadd_f32(v18, vcvt_f32_f64(v21)), 0x3F0000003F000000);
LABEL_19:
      reaction6 = [(PTPersonReactionSlot *)slotCopy reaction];
      [reaction6 setPosition:*&v18];

      *time = *&stamp->var0;
      *&time[16] = stamp->var3;
      [(PTPersonReactionSlot *)slotCopy setActiveGestureLastSeenTime:time];
      goto LABEL_49;
    }
  }

  else
  {
    confidence2 = [handCopy confidence];
    [confidence2 floatValue];
    v24 = v23;

    if (v24 >= 0.5)
    {
      [(PTPersonReactionSlot *)slotCopy setLatestGestureType:type];
      if (activeGestureType == type)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [(PTPersonReactionSlot *)slotCopy setLatestGestureType:0];
    }
  }

  if (slotCopy)
  {
    [(PTPersonReactionSlot *)slotCopy activeGestureLastSeenTime];
  }

  else
  {
    memset(time, 0, 24);
  }

  v66 = *stamp;
  v27 = GetDurationMilliseconds(time, &v66);
  [(PTPersonReactionSlot *)slotCopy milliSecondsToStop];
  if (v27 > v28)
  {
    reaction7 = [(PTPersonReactionSlot *)slotCopy reaction];

    if (reaction7)
    {
      v30 = _PTLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        reaction8 = [(PTPersonReactionSlot *)slotCopy reaction];
        emoji2 = [reaction8 emoji];
        intValue2 = [(NSNumber *)self->_identifier intValue];
        *time = *&stamp->var0;
        *&time[16] = stamp->var3;
        v34 = CMTimeGetSeconds(time);
        *time = 138412802;
        *&time[4] = emoji2;
        *&time[12] = 1024;
        *&time[14] = intValue2;
        *&time[18] = 2048;
        *&time[20] = v34;
        _os_log_impl(&dword_2243FB000, v30, OS_LOG_TYPE_DEFAULT, "ReactionProvider: Ended Reaction with (type: %@) (personID: %i) (time: %.2f)", time, 0x1Cu);
      }

      [(PTPersonReactionSlot *)slotCopy setReaction:0];
    }

    [(PTPersonWithReactions *)self _stopActiveGestureOnSlot:slotCopy];
    if (self->_bothHandsSlot == slotCopy)
    {
      v35 = *&stamp->var0;
      self->_lastTwoHandReactionEndTime.epoch = stamp->var3;
      *&self->_lastTwoHandReactionEndTime.value = v35;
      self->_lastTwoHandReactionType = [(PTPersonReactionSlot *)self->_leftHandSlot activeGestureType];
      [(PTPersonWithReactions *)self _stopActiveGestureOnSlot:self->_leftHandSlot];
      [(PTPersonWithReactions *)self _stopActiveGestureOnSlot:self->_rightHandSlot];
    }
  }

LABEL_49:
}

@end