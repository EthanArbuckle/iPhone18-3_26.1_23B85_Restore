@interface PTPersonWithReactions
- (NSArray)reactions;
- (PTPersonWithReactions)initWithIdentifier:(id)a3;
- (id)createReactionWithType:(unint64_t)a3;
- (void)_stopActiveGestureOnSlot:(id)a3;
- (void)_updateReactionSlot:(id)a3 withOneHand:(id)a4 optionalOtherHand:(id)a5 timeStamp:(id *)a6;
- (void)updateWithLeftHand:(id)a3 rightHand:(id)a4 timeStamp:(id *)a5;
@end

@implementation PTPersonWithReactions

- (PTPersonWithReactions)initWithIdentifier:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = PTPersonWithReactions;
  v6 = [(PTPersonWithReactions *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
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
      v7 = [(PTPersonReactionSlot *)v5 reaction];
      [v3 addObject:v7];
    }

    v4 += 8;
  }

  while (v4 != 24);
  for (i = 16; i != -8; i -= 8)
  {
  }

  return v3;
}

- (void)_stopActiveGestureOnSlot:(id)a3
{
  v3 = a3;
  [v3 setActiveGestureType:0];
  v6 = *MEMORY[0x277CC0898];
  v5 = v6;
  v7 = *(MEMORY[0x277CC0898] + 16);
  v4 = v7;
  [v3 setActiveGestureLastSeenTime:&v6];
  v6 = v5;
  v7 = v4;
  [v3 setLatestGestureFirstSeenTime:&v6];
}

- (void)updateWithLeftHand:(id)a3 rightHand:(id)a4 timeStamp:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 | v9)
  {
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    self->_bothHandsDetected = v12;
    if (v8)
    {
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = self->_unknownGesture;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v10 = self->_unknownGesture;
LABEL_10:
    if (self->_bothHandsDetected)
    {
      v13 = [v8 fpMitigation] == 8 || -[PTHandGesture fpMitigation](v10, "fpMitigation") == 8;
      v14 = [v8 fpMitigation] == 9 || -[PTHandGesture fpMitigation](v10, "fpMitigation") == 9;
      if ((-[PTHandGesture type](v10, "type") == 2 || -[PTHandGesture type](v10, "type") == 3 || [v8 type] == 2 || objc_msgSend(v8, "type") == 3) && (v13 || v14))
      {
        v15 = self->_unknownGesture;

        v16 = self->_unknownGesture;
        v10 = v16;
        v8 = v15;
      }
    }

    bothHandsSlot = self->_bothHandsSlot;
    v20 = *&a5->var0;
    var3 = a5->var3;
    [(PTPersonWithReactions *)self _updateReactionSlot:bothHandsSlot withOneHand:v10 optionalOtherHand:v8 timeStamp:&v20];
    leftHandSlot = self->_leftHandSlot;
    v20 = *&a5->var0;
    var3 = a5->var3;
    [(PTPersonWithReactions *)self _updateReactionSlot:leftHandSlot withOneHand:v8 optionalOtherHand:0 timeStamp:&v20];
    rightHandSlot = self->_rightHandSlot;
    v20 = *&a5->var0;
    var3 = a5->var3;
    [(PTPersonWithReactions *)self _updateReactionSlot:rightHandSlot withOneHand:v10 optionalOtherHand:0 timeStamp:&v20];

    goto LABEL_28;
  }

  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PTPersonWithReactions updateWithLeftHand:v8 rightHand:? timeStamp:?];
  }

LABEL_28:
}

- (id)createReactionWithType:(unint64_t)a3
{
  v5 = objc_alloc_init(PTEffectReaction);
  [(PTEffectReaction *)v5 setEffectType:a3];
  [(PTEffectReaction *)v5 setTriggerID:(*self->_reactionTriggerID)++];

  return v5;
}

- (void)_updateReactionSlot:(id)a3 withOneHand:(id)a4 optionalOtherHand:(id)a5 timeStamp:(id *)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 type];
  v14 = [(PTPersonReactionSlot *)v10 latestGestureType];
  v15 = [(PTPersonReactionSlot *)v10 activeGestureType];
  [v11 boundingBox];
  MidX = CGRectGetMidX(v72);
  [v11 boundingBox];
  MidY = CGRectGetMidY(v73);
  v17.f64[0] = MidX;
  v17.f64[1] = MidY;
  v18 = vcvt_f32_f64(v17);
  if (!v15)
  {
    if (v12)
    {
      if (CanTriggerTwoHandReaction(v11, v12, 0.7))
      {
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      if ((v13 & 0xFFFFFFFE) == 2)
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

      v36 = [v11 confidence];
      [v36 floatValue];
      v38 = v37;

      if (v38 >= v25)
      {
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }
    }

    [(PTPersonReactionSlot *)v10 setLatestGestureType:v13];
    if (v14 == v13 && (v14 - 1 < 4 || v14 == 6))
    {
      if (v10)
      {
        [(PTPersonReactionSlot *)v10 latestGestureFirstSeenTime];
        if ((v68 & 0x100000000) != 0)
        {
          [(PTPersonReactionSlot *)v10 latestGestureFirstSeenTime];
          v66 = *a6;
          DurationMilliseconds = GetDurationMilliseconds(time, &v66);
          [(PTPersonReactionSlot *)v10 milliSecondsToStart];
          v41 = v40;
          if (!v12)
          {
            if (self->_bothHandsDetected && (v14 - 1 < 4 || v14 == 6))
            {
              v41 = v40 + v40;
            }

            if (v14 == self->_lastTwoHandReactionType)
            {
              if (self->_lastTwoHandReactionEndTime.flags)
              {
                *time = *&self->_lastTwoHandReactionEndTime.value;
                *&time[16] = self->_lastTwoHandReactionEndTime.epoch;
                v66 = *a6;
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
          if (v14 != 1)
          {
            v43 = v41;
          }

          if (DurationMilliseconds <= v43)
          {
            goto LABEL_49;
          }

          [(PTPersonReactionSlot *)v10 setActiveGestureType:[(PTPersonReactionSlot *)v10 latestGestureType]];
          [(PTPersonReactionSlot *)v10 latestGestureFirstSeenTime];
          *time = v64;
          *&time[16] = v65;
          [(PTPersonReactionSlot *)v10 setActiveGestureLastSeenTime:time];
          v44 = [(PTPersonReactionSlot *)v10 activeGestureType]- 1;
          if (v12)
          {
            if (v44 > 5 || ((0x2Fu >> v44) & 1) == 0)
            {
              goto LABEL_49;
            }

            v45 = [(PTPersonWithReactions *)self createReactionWithType:qword_2244A5590[v44]];
            [(PTPersonReactionSlot *)v10 setReaction:v45];

            [v12 boundingBox];
            v63 = CGRectGetMidX(v76);
            [v12 boundingBox];
            v46 = CGRectGetMidY(v77);
            v47.f64[0] = v63;
            v47.f64[1] = v46;
            v48 = COERCE_DOUBLE(vmul_f32(vadd_f32(v18, vcvt_f32_f64(v47)), 0x3F0000003F000000));
            v49 = [(PTPersonReactionSlot *)v10 reaction];
            [v49 setPosition:v48];

            [(PTPersonReactionSlot *)self->_leftHandSlot setReaction:0];
            [(PTPersonReactionSlot *)self->_rightHandSlot setReaction:0];
            v50 = _PTLogSystem();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
LABEL_63:
              v57 = [(PTPersonReactionSlot *)v10 reaction];
              v58 = [v57 emoji];
              v59 = [(NSNumber *)self->_identifier intValue];
              *time = *&a6->var0;
              *&time[16] = a6->var3;
              Seconds = CMTimeGetSeconds(time);
              *time = 138412802;
              *&time[4] = v58;
              *&time[12] = 1024;
              *&time[14] = v59;
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
            v52 = [(PTPersonReactionSlot *)self->_bothHandsSlot reaction];

            if (v52)
            {
              goto LABEL_49;
            }

            v53 = [(PTPersonWithReactions *)self createReactionWithType:v51];
            [(PTPersonReactionSlot *)v10 setReaction:v53];

            v54 = [(PTPersonReactionSlot *)v10 reaction];
            [v54 setPosition:*&v18];

            v55 = [v11 handChirality] != 1;
            v56 = [(PTPersonReactionSlot *)v10 reaction];
            [v56 setOrientation:v55];

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

    *time = *&a6->var0;
    *&time[16] = a6->var3;
    [(PTPersonReactionSlot *)v10 setLatestGestureFirstSeenTime:time];
    goto LABEL_49;
  }

  if (v12)
  {
    if (CanTriggerTwoHandReaction(v11, v12, 0.5))
    {
      v19 = v13;
    }

    else
    {
      v19 = 0;
    }

    [(PTPersonReactionSlot *)v10 setLatestGestureType:v19];
    if (v15 == v19)
    {
      [v12 boundingBox];
      v62 = CGRectGetMidX(v74);
      [v12 boundingBox];
      v20 = CGRectGetMidY(v75);
      v21.f64[0] = v62;
      v21.f64[1] = v20;
      v18 = vmul_f32(vadd_f32(v18, vcvt_f32_f64(v21)), 0x3F0000003F000000);
LABEL_19:
      v26 = [(PTPersonReactionSlot *)v10 reaction];
      [v26 setPosition:*&v18];

      *time = *&a6->var0;
      *&time[16] = a6->var3;
      [(PTPersonReactionSlot *)v10 setActiveGestureLastSeenTime:time];
      goto LABEL_49;
    }
  }

  else
  {
    v22 = [v11 confidence];
    [v22 floatValue];
    v24 = v23;

    if (v24 >= 0.5)
    {
      [(PTPersonReactionSlot *)v10 setLatestGestureType:v13];
      if (v15 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [(PTPersonReactionSlot *)v10 setLatestGestureType:0];
    }
  }

  if (v10)
  {
    [(PTPersonReactionSlot *)v10 activeGestureLastSeenTime];
  }

  else
  {
    memset(time, 0, 24);
  }

  v66 = *a6;
  v27 = GetDurationMilliseconds(time, &v66);
  [(PTPersonReactionSlot *)v10 milliSecondsToStop];
  if (v27 > v28)
  {
    v29 = [(PTPersonReactionSlot *)v10 reaction];

    if (v29)
    {
      v30 = _PTLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(PTPersonReactionSlot *)v10 reaction];
        v32 = [v31 emoji];
        v33 = [(NSNumber *)self->_identifier intValue];
        *time = *&a6->var0;
        *&time[16] = a6->var3;
        v34 = CMTimeGetSeconds(time);
        *time = 138412802;
        *&time[4] = v32;
        *&time[12] = 1024;
        *&time[14] = v33;
        *&time[18] = 2048;
        *&time[20] = v34;
        _os_log_impl(&dword_2243FB000, v30, OS_LOG_TYPE_DEFAULT, "ReactionProvider: Ended Reaction with (type: %@) (personID: %i) (time: %.2f)", time, 0x1Cu);
      }

      [(PTPersonReactionSlot *)v10 setReaction:0];
    }

    [(PTPersonWithReactions *)self _stopActiveGestureOnSlot:v10];
    if (self->_bothHandsSlot == v10)
    {
      v35 = *&a6->var0;
      self->_lastTwoHandReactionEndTime.epoch = a6->var3;
      *&self->_lastTwoHandReactionEndTime.value = v35;
      self->_lastTwoHandReactionType = [(PTPersonReactionSlot *)self->_leftHandSlot activeGestureType];
      [(PTPersonWithReactions *)self _stopActiveGestureOnSlot:self->_leftHandSlot];
      [(PTPersonWithReactions *)self _stopActiveGestureOnSlot:self->_rightHandSlot];
    }
  }

LABEL_49:
}

@end