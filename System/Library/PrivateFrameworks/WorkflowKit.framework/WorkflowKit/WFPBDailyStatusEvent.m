@interface WFPBDailyStatusEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)coherenceSyncEnablement;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAppSessionCount:(BOOL)a3;
- (void)setHasAutoShortcutsSectionsViewed:(BOOL)a3;
- (void)setHasAverageShortcutCountPerFolder:(BOOL)a3;
- (void)setHasCoherenceBlobSize:(BOOL)a3;
- (void)setHasCoherenceSyncEnablement:(BOOL)a3;
- (void)setHasFolderCount:(BOOL)a3;
- (void)setHasHomeAutomationsEnabled:(BOOL)a3;
- (void)setHasInstalled:(BOOL)a3;
- (void)setHasNumberOfExtraLargeWidgets:(BOOL)a3;
- (void)setHasNumberOfLargeWidgets:(BOOL)a3;
- (void)setHasNumberOfLockScreenWidgets:(BOOL)a3;
- (void)setHasNumberOfMediumWidgets:(BOOL)a3;
- (void)setHasNumberOfPersonalAutomationsEnabled:(BOOL)a3;
- (void)setHasNumberOfPersonalAutomationsFromSuggestionsEnabled:(BOOL)a3;
- (void)setHasNumberOfRemoteWidgetsSetup:(BOOL)a3;
- (void)setHasNumberOfSmallMultiShortcutWidgets:(BOOL)a3;
- (void)setHasNumberOfSmallWidgets:(BOOL)a3;
- (void)setHasNumberOfSuggestedAutomationsGenerated:(BOOL)a3;
- (void)setHasNumberOfSuggestedAutomationsGeneratedUserAlreadyHas:(BOOL)a3;
- (void)setHasNumberOfWidgetsOnHomeScreen:(BOOL)a3;
- (void)setHasNumberOfWidgetsOnLoL:(BOOL)a3;
- (void)setHasPersonalAutomationsEnabled:(BOOL)a3;
- (void)setHasSharingEnabled:(BOOL)a3;
- (void)setHasShortcutComplicationSlotsUsed:(BOOL)a3;
- (void)setHasShortcutRunCount:(BOOL)a3;
- (void)setHasShortcutsCount:(BOOL)a3;
- (void)setHasSleepEnabled:(BOOL)a3;
- (void)setHasSleepShortcutsCount:(BOOL)a3;
- (void)setHasUncategorizedShortcutCount:(BOOL)a3;
- (void)setHasWatchShortcutCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBDailyStatusEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 5))
  {
    [(WFPBDailyStatusEvent *)self setKey:?];
    v4 = v7;
  }

  v5 = *(v4 + 33);
  if ((v5 & 0x8000000) != 0)
  {
    self->_installed = *(v4 + 126);
    *&self->_has |= 0x8000000u;
    v5 = *(v4 + 33);
    if ((v5 & 0x20000000) == 0)
    {
LABEL_5:
      if ((v5 & 0x10000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  self->_sharingEnabled = *(v4 + 128);
  *&self->_has |= 0x20000000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_personalAutomationsEnabled = *(v4 + 127);
  *&self->_has |= 0x10000000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_homeAutomationsEnabled = *(v4 + 125);
  *&self->_has |= 0x4000000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x80000) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_shortcutComplicationSlotsUsed = *(v4 + 25);
  *&self->_has |= 0x80000u;
  v5 = *(v4 + 33);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_appComplicationSlotsUsed = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 33);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_sleepEnabled = *(v4 + 129);
  *&self->_has |= 0x40000000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x200000) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_shortcutsCount = *(v4 + 27);
  *&self->_has |= 0x200000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_folderCount = *(v4 + 9);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 33);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_averageShortcutCountPerFolder = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 33);
  if ((v5 & 0x800000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_uncategorizedShortcutCount = *(v4 + 29);
  *&self->_has |= 0x800000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_shortcutRunCount = *(v4 + 26);
  *&self->_has |= 0x100000u;
  v5 = *(v4 + 33);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_appSessionCount = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 33);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_watchShortcutCount = *(v4 + 30);
  *&self->_has |= 0x1000000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x400000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_sleepShortcutsCount = *(v4 + 28);
  *&self->_has |= 0x400000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x4000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_numberOfSmallWidgets = *(v4 + 20);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_numberOfMediumWidgets = *(v4 + 15);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 33);
  if ((v5 & 0x80) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_numberOfLargeWidgets = *(v4 + 13);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 33);
  if ((v5 & 0x20000) == 0)
  {
LABEL_22:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_numberOfWidgetsOnHomeScreen = *(v4 + 23);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x40000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_numberOfWidgetsOnLoL = *(v4 + 24);
  *&self->_has |= 0x40000u;
  v5 = *(v4 + 33);
  if ((v5 & 0x400) == 0)
  {
LABEL_24:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_numberOfPersonalAutomationsEnabled = *(v4 + 16);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 33);
  if ((v5 & 0x800) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_numberOfPersonalAutomationsFromSuggestionsEnabled = *(v4 + 17);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 33);
  if ((v5 & 0x8000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_63:
  self->_numberOfSuggestedAutomationsGenerated = *(v4 + 21);
  *&self->_has |= 0x8000u;
  if ((*(v4 + 33) & 0x10000) != 0)
  {
LABEL_27:
    self->_numberOfSuggestedAutomationsGeneratedUserAlreadyHas = *(v4 + 22);
    *&self->_has |= 0x10000u;
  }

LABEL_28:
  if (*(v4 + 2))
  {
    [(WFPBDailyStatusEvent *)self setAutomationSuggestionsTrialIdentifier:?];
    v4 = v7;
  }

  v6 = *(v4 + 33);
  if ((v6 & 0x2000000) != 0)
  {
    self->_autoShortcutsSectionsViewed = *(v4 + 124);
    *&self->_has |= 0x2000000u;
    v6 = *(v4 + 33);
    if ((v6 & 0x1000) == 0)
    {
LABEL_32:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_67;
    }
  }

  else if ((v6 & 0x1000) == 0)
  {
    goto LABEL_32;
  }

  self->_numberOfRemoteWidgetsSetup = *(v4 + 18);
  *&self->_has |= 0x1000u;
  v6 = *(v4 + 33);
  if ((v6 & 0x100) == 0)
  {
LABEL_33:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_numberOfLockScreenWidgets = *(v4 + 14);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 33);
  if ((v6 & 0x40) == 0)
  {
LABEL_34:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_numberOfExtraLargeWidgets = *(v4 + 12);
  *&self->_has |= 0x40u;
  v6 = *(v4 + 33);
  if ((v6 & 0x2000) == 0)
  {
LABEL_35:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_numberOfSmallMultiShortcutWidgets = *(v4 + 19);
  *&self->_has |= 0x2000u;
  v6 = *(v4 + 33);
  if ((v6 & 0x10) == 0)
  {
LABEL_36:
    if ((v6 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_70:
  self->_coherenceSyncEnablement = *(v4 + 8);
  *&self->_has |= 0x10u;
  if ((*(v4 + 33) & 8) != 0)
  {
LABEL_37:
    self->_coherenceBlobSize = *(v4 + 7);
    *&self->_has |= 8u;
  }

LABEL_38:
}

- (unint64_t)hash
{
  v39 = [(NSString *)self->_key hash];
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    v38 = 2654435761 * self->_installed;
    if ((*&has & 0x20000000) != 0)
    {
LABEL_3:
      v37 = 2654435761 * self->_sharingEnabled;
      if ((*&has & 0x10000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v38 = 0;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v37 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_4:
    v36 = 2654435761 * self->_personalAutomationsEnabled;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v36 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_5:
    v35 = 2654435761 * self->_homeAutomationsEnabled;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v35 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_6:
    v34 = 2654435761 * self->_shortcutComplicationSlotsUsed;
    if (*&has)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v34 = 0;
  if (*&has)
  {
LABEL_7:
    v33 = 2654435761 * self->_appComplicationSlotsUsed;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v33 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_8:
    v32 = 2654435761 * self->_sleepEnabled;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v32 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_9:
    v31 = 2654435761 * self->_shortcutsCount;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_10:
    v30 = 2654435761 * self->_folderCount;
    if ((*&has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v30 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_11:
    v29 = 2654435761 * self->_averageShortcutCountPerFolder;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v29 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_12:
    v28 = 2654435761 * self->_uncategorizedShortcutCount;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v28 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_13:
    v27 = 2654435761 * self->_shortcutRunCount;
    if ((*&has & 2) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v27 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_14:
    v26 = 2654435761 * self->_appSessionCount;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v26 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_15:
    v25 = 2654435761 * self->_watchShortcutCount;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v25 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_16:
    v24 = 2654435761 * self->_sleepShortcutsCount;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v24 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_17:
    v22 = 2654435761 * self->_numberOfSmallWidgets;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v22 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_18:
    v4 = 2654435761 * self->_numberOfMediumWidgets;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v4 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_19:
    v5 = 2654435761 * self->_numberOfLargeWidgets;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v5 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_20:
    v6 = 2654435761 * self->_numberOfWidgetsOnHomeScreen;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_21:
    v7 = 2654435761 * self->_numberOfWidgetsOnLoL;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v7 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_22:
    v8 = 2654435761 * self->_numberOfPersonalAutomationsEnabled;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v8 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_23:
    v9 = 2654435761 * self->_numberOfPersonalAutomationsFromSuggestionsEnabled;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v10 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_47:
  v9 = 0;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  v10 = 2654435761 * self->_numberOfSuggestedAutomationsGenerated;
  if ((*&has & 0x10000) != 0)
  {
LABEL_25:
    v11 = 2654435761 * self->_numberOfSuggestedAutomationsGeneratedUserAlreadyHas;
    goto LABEL_50;
  }

LABEL_49:
  v11 = 0;
LABEL_50:
  v12 = [(NSString *)self->_automationSuggestionsTrialIdentifier hash];
  v13 = self->_has;
  if ((*&v13 & 0x2000000) != 0)
  {
    v14 = 2654435761 * self->_autoShortcutsSectionsViewed;
    if ((*&v13 & 0x1000) != 0)
    {
LABEL_52:
      v15 = 2654435761 * self->_numberOfRemoteWidgetsSetup;
      if ((*&v13 & 0x100) != 0)
      {
        goto LABEL_53;
      }

      goto LABEL_60;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x1000) != 0)
    {
      goto LABEL_52;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x100) != 0)
  {
LABEL_53:
    v16 = 2654435761 * self->_numberOfLockScreenWidgets;
    if ((*&v13 & 0x40) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_61;
  }

LABEL_60:
  v16 = 0;
  if ((*&v13 & 0x40) != 0)
  {
LABEL_54:
    v17 = 2654435761 * self->_numberOfExtraLargeWidgets;
    if ((*&v13 & 0x2000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_62;
  }

LABEL_61:
  v17 = 0;
  if ((*&v13 & 0x2000) != 0)
  {
LABEL_55:
    v18 = 2654435761 * self->_numberOfSmallMultiShortcutWidgets;
    if ((*&v13 & 0x10) != 0)
    {
      goto LABEL_56;
    }

LABEL_63:
    v19 = 0;
    if ((*&v13 & 8) != 0)
    {
      goto LABEL_57;
    }

LABEL_64:
    v20 = 0;
    return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
  }

LABEL_62:
  v18 = 0;
  if ((*&v13 & 0x10) == 0)
  {
    goto LABEL_63;
  }

LABEL_56:
  v19 = 2654435761 * self->_coherenceSyncEnablement;
  if ((*&v13 & 8) == 0)
  {
    goto LABEL_64;
  }

LABEL_57:
  v20 = 2654435761 * self->_coherenceBlobSize;
  return v38 ^ v39 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_180;
  }

  key = self->_key;
  if (key | *(v4 + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_180;
    }
  }

  has = self->_has;
  v7 = *(v4 + 33);
  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_180;
    }

    v8 = *(v4 + 126);
    if (self->_installed)
    {
      if ((*(v4 + 126) & 1) == 0)
      {
        goto LABEL_180;
      }
    }

    else if (*(v4 + 126))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_180;
    }

    v9 = *(v4 + 128);
    if (self->_sharingEnabled)
    {
      if ((*(v4 + 128) & 1) == 0)
      {
        goto LABEL_180;
      }
    }

    else if (*(v4 + 128))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_180;
    }

    v10 = *(v4 + 127);
    if (self->_personalAutomationsEnabled)
    {
      if ((*(v4 + 127) & 1) == 0)
      {
        goto LABEL_180;
      }
    }

    else if (*(v4 + 127))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_180;
    }

    v11 = *(v4 + 125);
    if (self->_homeAutomationsEnabled)
    {
      if ((*(v4 + 125) & 1) == 0)
      {
        goto LABEL_180;
      }
    }

    else if (*(v4 + 125))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_shortcutComplicationSlotsUsed != *(v4 + 25))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_180;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_appComplicationSlotsUsed != *(v4 + 2))
    {
      goto LABEL_180;
    }
  }

  else if (v7)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_180;
    }

    v12 = *(v4 + 129);
    if (self->_sleepEnabled)
    {
      if ((*(v4 + 129) & 1) == 0)
      {
        goto LABEL_180;
      }
    }

    else if (*(v4 + 129))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_shortcutsCount != *(v4 + 27))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_folderCount != *(v4 + 9))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_averageShortcutCountPerFolder != *(v4 + 6))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_uncategorizedShortcutCount != *(v4 + 29))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_shortcutRunCount != *(v4 + 26))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_appSessionCount != *(v4 + 3))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_watchShortcutCount != *(v4 + 30))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_sleepShortcutsCount != *(v4 + 28))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_numberOfSmallWidgets != *(v4 + 20))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_numberOfMediumWidgets != *(v4 + 15))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_numberOfLargeWidgets != *(v4 + 13))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_numberOfWidgetsOnHomeScreen != *(v4 + 23))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_numberOfWidgetsOnLoL != *(v4 + 24))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_numberOfPersonalAutomationsEnabled != *(v4 + 16))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_numberOfPersonalAutomationsFromSuggestionsEnabled != *(v4 + 17))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_numberOfSuggestedAutomationsGenerated != *(v4 + 21))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_numberOfSuggestedAutomationsGeneratedUserAlreadyHas != *(v4 + 22))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_180;
  }

  automationSuggestionsTrialIdentifier = self->_automationSuggestionsTrialIdentifier;
  if (automationSuggestionsTrialIdentifier | *(v4 + 2))
  {
    if (![(NSString *)automationSuggestionsTrialIdentifier isEqual:?])
    {
      goto LABEL_180;
    }

    has = self->_has;
    v7 = *(v4 + 33);
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) != 0)
    {
      v14 = *(v4 + 124);
      if (self->_autoShortcutsSectionsViewed)
      {
        if ((*(v4 + 124) & 1) == 0)
        {
          goto LABEL_180;
        }

        goto LABEL_150;
      }

      if ((*(v4 + 124) & 1) == 0)
      {
        goto LABEL_150;
      }
    }

LABEL_180:
    v15 = 0;
    goto LABEL_181;
  }

  if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_180;
  }

LABEL_150:
  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_numberOfRemoteWidgetsSetup != *(v4 + 18))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_numberOfLockScreenWidgets != *(v4 + 14))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_numberOfExtraLargeWidgets != *(v4 + 12))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_numberOfSmallMultiShortcutWidgets != *(v4 + 19))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_coherenceSyncEnablement != *(v4 + 8))
    {
      goto LABEL_180;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_180;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_coherenceBlobSize != *(v4 + 7))
    {
      goto LABEL_180;
    }

    v15 = 1;
  }

  else
  {
    v15 = (v7 & 8) == 0;
  }

LABEL_181:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    *(v5 + 126) = self->_installed;
    *(v5 + 132) |= 0x8000000u;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 128) = self->_sharingEnabled;
  *(v5 + 132) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 127) = self->_personalAutomationsEnabled;
  *(v5 + 132) |= 0x10000000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 125) = self->_homeAutomationsEnabled;
  *(v5 + 132) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 100) = self->_shortcutComplicationSlotsUsed;
  *(v5 + 132) |= 0x80000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 8) = self->_appComplicationSlotsUsed;
  *(v5 + 132) |= 1u;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 129) = self->_sleepEnabled;
  *(v5 + 132) |= 0x40000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 108) = self->_shortcutsCount;
  *(v5 + 132) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 36) = self->_folderCount;
  *(v5 + 132) |= 0x20u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_11:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 24) = self->_averageShortcutCountPerFolder;
  *(v5 + 132) |= 4u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 116) = self->_uncategorizedShortcutCount;
  *(v5 + 132) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 104) = self->_shortcutRunCount;
  *(v5 + 132) |= 0x100000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 12) = self->_appSessionCount;
  *(v5 + 132) |= 2u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 120) = self->_watchShortcutCount;
  *(v5 + 132) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 112) = self->_sleepShortcutsCount;
  *(v5 + 132) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 80) = self->_numberOfSmallWidgets;
  *(v5 + 132) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 60) = self->_numberOfMediumWidgets;
  *(v5 + 132) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 52) = self->_numberOfLargeWidgets;
  *(v5 + 132) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 92) = self->_numberOfWidgetsOnHomeScreen;
  *(v5 + 132) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 96) = self->_numberOfWidgetsOnLoL;
  *(v5 + 132) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 64) = self->_numberOfPersonalAutomationsEnabled;
  *(v5 + 132) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 68) = self->_numberOfPersonalAutomationsFromSuggestionsEnabled;
  *(v5 + 132) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_24:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_57:
  *(v5 + 84) = self->_numberOfSuggestedAutomationsGenerated;
  *(v5 + 132) |= 0x8000u;
  if ((*&self->_has & 0x10000) != 0)
  {
LABEL_25:
    *(v5 + 88) = self->_numberOfSuggestedAutomationsGeneratedUserAlreadyHas;
    *(v5 + 132) |= 0x10000u;
  }

LABEL_26:
  v9 = [(NSString *)self->_automationSuggestionsTrialIdentifier copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  v11 = self->_has;
  if ((*&v11 & 0x2000000) != 0)
  {
    *(v5 + 124) = self->_autoShortcutsSectionsViewed;
    *(v5 + 132) |= 0x2000000u;
    v11 = self->_has;
    if ((*&v11 & 0x1000) == 0)
    {
LABEL_28:
      if ((*&v11 & 0x100) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v11 & 0x1000) == 0)
  {
    goto LABEL_28;
  }

  *(v5 + 72) = self->_numberOfRemoteWidgetsSetup;
  *(v5 + 132) |= 0x1000u;
  v11 = self->_has;
  if ((*&v11 & 0x100) == 0)
  {
LABEL_29:
    if ((*&v11 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 56) = self->_numberOfLockScreenWidgets;
  *(v5 + 132) |= 0x100u;
  v11 = self->_has;
  if ((*&v11 & 0x40) == 0)
  {
LABEL_30:
    if ((*&v11 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 48) = self->_numberOfExtraLargeWidgets;
  *(v5 + 132) |= 0x40u;
  v11 = self->_has;
  if ((*&v11 & 0x2000) == 0)
  {
LABEL_31:
    if ((*&v11 & 0x10) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    *(v5 + 32) = self->_coherenceSyncEnablement;
    *(v5 + 132) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_33;
  }

LABEL_63:
  *(v5 + 76) = self->_numberOfSmallMultiShortcutWidgets;
  *(v5 + 132) |= 0x2000u;
  v11 = self->_has;
  if ((*&v11 & 0x10) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((*&v11 & 8) != 0)
  {
LABEL_33:
    *(v5 + 28) = self->_coherenceBlobSize;
    *(v5 + 132) |= 8u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v7;
  }

  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    *(v4 + 126) = self->_installed;
    *(v4 + 33) |= 0x8000000u;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x10000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 128) = self->_sharingEnabled;
  *(v4 + 33) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 127) = self->_personalAutomationsEnabled;
  *(v4 + 33) |= 0x10000000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 125) = self->_homeAutomationsEnabled;
  *(v4 + 33) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 25) = self->_shortcutComplicationSlotsUsed;
  *(v4 + 33) |= 0x80000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 2) = self->_appComplicationSlotsUsed;
  *(v4 + 33) |= 1u;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 129) = self->_sleepEnabled;
  *(v4 + 33) |= 0x40000000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 27) = self->_shortcutsCount;
  *(v4 + 33) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 9) = self->_folderCount;
  *(v4 + 33) |= 0x20u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 6) = self->_averageShortcutCountPerFolder;
  *(v4 + 33) |= 4u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 29) = self->_uncategorizedShortcutCount;
  *(v4 + 33) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 26) = self->_shortcutRunCount;
  *(v4 + 33) |= 0x100000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 3) = self->_appSessionCount;
  *(v4 + 33) |= 2u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 30) = self->_watchShortcutCount;
  *(v4 + 33) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 28) = self->_sleepShortcutsCount;
  *(v4 + 33) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 20) = self->_numberOfSmallWidgets;
  *(v4 + 33) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 15) = self->_numberOfMediumWidgets;
  *(v4 + 33) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 13) = self->_numberOfLargeWidgets;
  *(v4 + 33) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 23) = self->_numberOfWidgetsOnHomeScreen;
  *(v4 + 33) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 24) = self->_numberOfWidgetsOnLoL;
  *(v4 + 33) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 16) = self->_numberOfPersonalAutomationsEnabled;
  *(v4 + 33) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_25:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 17) = self->_numberOfPersonalAutomationsFromSuggestionsEnabled;
  *(v4 + 33) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_63:
  *(v4 + 21) = self->_numberOfSuggestedAutomationsGenerated;
  *(v4 + 33) |= 0x8000u;
  if ((*&self->_has & 0x10000) != 0)
  {
LABEL_27:
    *(v4 + 22) = self->_numberOfSuggestedAutomationsGeneratedUserAlreadyHas;
    *(v4 + 33) |= 0x10000u;
  }

LABEL_28:
  if (self->_automationSuggestionsTrialIdentifier)
  {
    [v7 setAutomationSuggestionsTrialIdentifier:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 0x2000000) != 0)
  {
    *(v4 + 124) = self->_autoShortcutsSectionsViewed;
    *(v4 + 33) |= 0x2000000u;
    v6 = self->_has;
    if ((*&v6 & 0x1000) == 0)
    {
LABEL_32:
      if ((*&v6 & 0x100) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v6 & 0x1000) == 0)
  {
    goto LABEL_32;
  }

  *(v4 + 18) = self->_numberOfRemoteWidgetsSetup;
  *(v4 + 33) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 14) = self->_numberOfLockScreenWidgets;
  *(v4 + 33) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 12) = self->_numberOfExtraLargeWidgets;
  *(v4 + 33) |= 0x40u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 19) = self->_numberOfSmallMultiShortcutWidgets;
  *(v4 + 33) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_36:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_70:
  *(v4 + 8) = self->_coherenceSyncEnablement;
  *(v4 + 33) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_37:
    *(v4 + 7) = self->_coherenceBlobSize;
    *(v4 + 33) |= 8u;
  }

LABEL_38:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v38 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v38;
  }

  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    installed = self->_installed;
    PBDataWriterWriteBOOLField();
    v4 = v38;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x10000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  sharingEnabled = self->_sharingEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  personalAutomationsEnabled = self->_personalAutomationsEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  homeAutomationsEnabled = self->_homeAutomationsEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  shortcutComplicationSlotsUsed = self->_shortcutComplicationSlotsUsed;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  appComplicationSlotsUsed = self->_appComplicationSlotsUsed;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  sleepEnabled = self->_sleepEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  shortcutsCount = self->_shortcutsCount;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  folderCount = self->_folderCount;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  averageShortcutCountPerFolder = self->_averageShortcutCountPerFolder;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  uncategorizedShortcutCount = self->_uncategorizedShortcutCount;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  shortcutRunCount = self->_shortcutRunCount;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_54;
  }

LABEL_53:
  appSessionCount = self->_appSessionCount;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

LABEL_54:
  watchShortcutCount = self->_watchShortcutCount;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_55:
  sleepShortcutsCount = self->_sleepShortcutsCount;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

LABEL_56:
  numberOfSmallWidgets = self->_numberOfSmallWidgets;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

LABEL_57:
  numberOfMediumWidgets = self->_numberOfMediumWidgets;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_58:
  numberOfLargeWidgets = self->_numberOfLargeWidgets;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_59:
  numberOfWidgetsOnHomeScreen = self->_numberOfWidgetsOnHomeScreen;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_61;
  }

LABEL_60:
  numberOfWidgetsOnLoL = self->_numberOfWidgetsOnLoL;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_62;
  }

LABEL_61:
  numberOfPersonalAutomationsEnabled = self->_numberOfPersonalAutomationsEnabled;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_25:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

LABEL_62:
  numberOfPersonalAutomationsFromSuggestionsEnabled = self->_numberOfPersonalAutomationsFromSuggestionsEnabled;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_63:
  numberOfSuggestedAutomationsGenerated = self->_numberOfSuggestedAutomationsGenerated;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  if ((*&self->_has & 0x10000) != 0)
  {
LABEL_27:
    numberOfSuggestedAutomationsGeneratedUserAlreadyHas = self->_numberOfSuggestedAutomationsGeneratedUserAlreadyHas;
    PBDataWriterWriteUint32Field();
    v4 = v38;
  }

LABEL_28:
  if (self->_automationSuggestionsTrialIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v38;
  }

  v7 = self->_has;
  if ((*&v7 & 0x2000000) != 0)
  {
    autoShortcutsSectionsViewed = self->_autoShortcutsSectionsViewed;
    PBDataWriterWriteBOOLField();
    v4 = v38;
    v7 = self->_has;
    if ((*&v7 & 0x1000) == 0)
    {
LABEL_32:
      if ((*&v7 & 0x100) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v7 & 0x1000) == 0)
  {
    goto LABEL_32;
  }

  numberOfRemoteWidgetsSetup = self->_numberOfRemoteWidgetsSetup;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_33:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  numberOfLockScreenWidgets = self->_numberOfLockScreenWidgets;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  numberOfExtraLargeWidgets = self->_numberOfExtraLargeWidgets;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  numberOfSmallMultiShortcutWidgets = self->_numberOfSmallMultiShortcutWidgets;
  PBDataWriterWriteUint32Field();
  v4 = v38;
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_36:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_70:
  coherenceSyncEnablement = self->_coherenceSyncEnablement;
  PBDataWriterWriteInt32Field();
  v4 = v38;
  if ((*&self->_has & 8) != 0)
  {
LABEL_37:
    coherenceBlobSize = self->_coherenceBlobSize;
    PBDataWriterWriteUint32Field();
    v4 = v38;
  }

LABEL_38:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_installed];
    [v4 setObject:v13 forKey:@"installed"];

    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x10000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_sharingEnabled];
  [v4 setObject:v14 forKey:@"sharingEnabled"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_personalAutomationsEnabled];
  [v4 setObject:v15 forKey:@"personalAutomationsEnabled"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_homeAutomationsEnabled];
  [v4 setObject:v16 forKey:@"homeAutomationsEnabled"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_shortcutComplicationSlotsUsed];
  [v4 setObject:v17 forKey:@"shortcutComplicationSlotsUsed"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_appComplicationSlotsUsed];
  [v4 setObject:v18 forKey:@"appComplicationSlotsUsed"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_sleepEnabled];
  [v4 setObject:v19 forKey:@"sleepEnabled"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_shortcutsCount];
  [v4 setObject:v20 forKey:@"shortcutsCount"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_folderCount];
  [v4 setObject:v21 forKey:@"folderCount"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_averageShortcutCountPerFolder];
  [v4 setObject:v22 forKey:@"averageShortcutCountPerFolder"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uncategorizedShortcutCount];
  [v4 setObject:v23 forKey:@"uncategorizedShortcutCount"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_shortcutRunCount];
  [v4 setObject:v24 forKey:@"shortcutRunCount"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_appSessionCount];
  [v4 setObject:v25 forKey:@"appSessionCount"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_watchShortcutCount];
  [v4 setObject:v26 forKey:@"watchShortcutCount"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sleepShortcutsCount];
  [v4 setObject:v27 forKey:@"sleepShortcutsCount"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfSmallWidgets];
  [v4 setObject:v28 forKey:@"numberOfSmallWidgets"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfMediumWidgets];
  [v4 setObject:v29 forKey:@"numberOfMediumWidgets"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfLargeWidgets];
  [v4 setObject:v30 forKey:@"numberOfLargeWidgets"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfWidgetsOnHomeScreen];
  [v4 setObject:v31 forKey:@"numberOfWidgetsOnHomeScreen"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfWidgetsOnLoL];
  [v4 setObject:v32 forKey:@"numberOfWidgetsOnLoL"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfPersonalAutomationsEnabled];
  [v4 setObject:v33 forKey:@"numberOfPersonalAutomationsEnabled"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_25:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfPersonalAutomationsFromSuggestionsEnabled];
  [v4 setObject:v34 forKey:@"numberOfPersonalAutomationsFromSuggestionsEnabled"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_26:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_61:
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfSuggestedAutomationsGenerated];
  [v4 setObject:v35 forKey:@"numberOfSuggestedAutomationsGenerated"];

  if ((*&self->_has & 0x10000) != 0)
  {
LABEL_27:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfSuggestedAutomationsGeneratedUserAlreadyHas];
    [v4 setObject:v7 forKey:@"numberOfSuggestedAutomationsGeneratedUserAlreadyHas"];
  }

LABEL_28:
  automationSuggestionsTrialIdentifier = self->_automationSuggestionsTrialIdentifier;
  if (automationSuggestionsTrialIdentifier)
  {
    [v4 setObject:automationSuggestionsTrialIdentifier forKey:@"automationSuggestionsTrialIdentifier"];
  }

  v9 = self->_has;
  if ((*&v9 & 0x2000000) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_autoShortcutsSectionsViewed];
    [v4 setObject:v36 forKey:@"autoShortcutsSectionsViewed"];

    v9 = self->_has;
    if ((*&v9 & 0x1000) == 0)
    {
LABEL_32:
      if ((*&v9 & 0x100) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_65;
    }
  }

  else if ((*&v9 & 0x1000) == 0)
  {
    goto LABEL_32;
  }

  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfRemoteWidgetsSetup];
  [v4 setObject:v37 forKey:@"numberOfRemoteWidgetsSetup"];

  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_33:
    if ((*&v9 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfLockScreenWidgets];
  [v4 setObject:v38 forKey:@"numberOfLockScreenWidgets"];

  v9 = self->_has;
  if ((*&v9 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfExtraLargeWidgets];
  [v4 setObject:v39 forKey:@"numberOfExtraLargeWidgets"];

  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_35:
    if ((*&v9 & 0x10) == 0)
    {
      goto LABEL_36;
    }

LABEL_68:
    v41 = [MEMORY[0x1E696AD98] numberWithInt:self->_coherenceSyncEnablement];
    [v4 setObject:v41 forKey:@"coherenceSyncEnablement"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_67:
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfSmallMultiShortcutWidgets];
  [v4 setObject:v40 forKey:@"numberOfSmallMultiShortcutWidgets"];

  v9 = self->_has;
  if ((*&v9 & 0x10) != 0)
  {
    goto LABEL_68;
  }

LABEL_36:
  if ((*&v9 & 8) != 0)
  {
LABEL_37:
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_coherenceBlobSize];
    [v4 setObject:v10 forKey:@"coherenceBlobSize"];
  }

LABEL_38:
  v11 = v4;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBDailyStatusEvent;
  v4 = [(WFPBDailyStatusEvent *)&v8 description];
  v5 = [(WFPBDailyStatusEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasCoherenceBlobSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasCoherenceSyncEnablement:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (int)coherenceSyncEnablement
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_coherenceSyncEnablement;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNumberOfSmallMultiShortcutWidgets:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasNumberOfExtraLargeWidgets:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasNumberOfLockScreenWidgets:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasNumberOfRemoteWidgetsSetup:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasAutoShortcutsSectionsViewed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasNumberOfSuggestedAutomationsGeneratedUserAlreadyHas:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasNumberOfSuggestedAutomationsGenerated:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasNumberOfPersonalAutomationsFromSuggestionsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasNumberOfPersonalAutomationsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasNumberOfWidgetsOnLoL:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasNumberOfWidgetsOnHomeScreen:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasNumberOfLargeWidgets:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasNumberOfMediumWidgets:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasNumberOfSmallWidgets:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasSleepShortcutsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasWatchShortcutCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasAppSessionCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasShortcutRunCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasUncategorizedShortcutCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasAverageShortcutCountPerFolder:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasFolderCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasShortcutsCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasSleepEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasShortcutComplicationSlotsUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasHomeAutomationsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasPersonalAutomationsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasSharingEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasInstalled:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"DailyStatus";
  }
}

@end