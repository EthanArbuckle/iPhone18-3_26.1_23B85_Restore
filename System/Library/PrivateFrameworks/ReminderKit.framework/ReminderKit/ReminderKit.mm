void sub_19A0DCFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A0DD21C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t rem_feature_enabled(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = [a1 cStringUsingEncoding:1];
  v7 = [v5 cStringUsingEncoding:1];

  return MEMORY[0x1EEE71F10](v6, v7);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
}

{
}

uint64_t rem_currentRuntimeVersion()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = +[REMUserDefaults daemonUserDefaults];
  v1 = [v0 remCurrentRuntimeVersionDebuggingOverride];

  if (v1)
  {
    v2 = [v1 integerValue];
    v3 = +[REMLogStore write];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_INFO, "remCurrentRuntimeVersionDebuggingOverride = %ld", &v6, 0xCu);
    }
  }

  else
  {
    v2 = 20240430;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t REMDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

BOOL REMSymbolicColorIsSupportedByCK(void *a1)
{
  v1 = a1;
  v2 = ckSymbolicColorNameToRGBMapping();
  v3 = [v2 objectForKeyedSubscript:v1];

  return v3 != 0;
}

id ckSymbolicColorNameToRGBMapping()
{
  if (ckSymbolicColorNameToRGBMapping_onceToken != -1)
  {
    ckSymbolicColorNameToRGBMapping_cold_1();
  }

  v1 = ckSymbolicColorNameToRGBMapping_mapping;

  return v1;
}

void __ckSymbolicColorNameToRGBMapping_block_invoke()
{
  v4[12] = *MEMORY[0x1E69E9840];
  v3[0] = @"red";
  v3[1] = @"orange";
  v4[0] = @"#FF3B30";
  v4[1] = @"#FF9500";
  v3[2] = @"yellow";
  v3[3] = @"green";
  v4[2] = @"#FFCC00";
  v4[3] = @"#4CD964";
  v3[4] = @"lightBlue";
  v3[5] = @"blue";
  v4[4] = @"#5AC8FA";
  v4[5] = @"#007AFF";
  v3[6] = @"indigo";
  v3[7] = @"purple";
  v4[6] = @"#5856D6";
  v4[7] = @"#E357A8";
  v3[8] = @"pink";
  v3[9] = @"rose";
  v4[8] = @"#FF2D55";
  v4[9] = @"#D9A69F";
  v3[10] = @"brown";
  v3[11] = @"gray";
  v4[10] = @"#9D8563";
  v4[11] = @"#5B626A";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:12];
  v1 = ckSymbolicColorNameToRGBMapping_mapping;
  ckSymbolicColorNameToRGBMapping_mapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

BOOL REMSymbolicColorIsSupportedByDA(void *a1)
{
  v1 = a1;
  v2 = EKSymbolicColorToRGBMapping();
  v3 = [v2 objectForKeyedSubscript:v1];

  return v3 != 0;
}

id _REMGetLocalizedString(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"New in %@";
      goto LABEL_84;
    case 1:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"This list is shared";
      goto LABEL_84;
    case 2:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Shared with %@";
      goto LABEL_84;
    case 3:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Shared with %@ & %u other(s)";
      goto LABEL_95;
    case 4:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Shared by %@";
      goto LABEL_84;
    case 5:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Invited by %@";
      goto LABEL_84;
    case 6:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"“%@” list is no longer shared.";
      goto LABEL_84;
    case 7:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Invitation to share a reminder list with %@.";
      goto LABEL_84;
    case 8:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%1$@ %2$@ your shared reminder list.";
      goto LABEL_84;
    case 9:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"joined";
      goto LABEL_84;
    case 10:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"declined";
      goto LABEL_84;
    case 11:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Reminders";
      goto LABEL_84;
    case 12:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Local";
      goto LABEL_84;
    case 13:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Untitled";
      goto LABEL_84;
    case 14:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Due Today";
      goto LABEL_84;
    case 15:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ and %lu other items";
      goto LABEL_95;
    case 16:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Arrived at location: %@";
      goto LABEL_84;
    case 17:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Left location: %@";
      goto LABEL_84;
    case 18:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Got in car";
      goto LABEL_84;
    case 19:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Got out of car";
      goto LABEL_84;
    case 20:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Because you’re messaging %@";
      goto LABEL_84;
    case 21:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"You have overdue reminders";
      goto LABEL_84;
    case 22:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"New Reminder";
      goto LABEL_84;
    case 23:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%u more reminders";
      goto LABEL_84;
    case 24:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Ignore";
      goto LABEL_84;
    case 25:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Later";
      goto LABEL_84;
    case 26:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Mark as Completed";
      goto LABEL_84;
    case 27:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"MARK_AS_COMPLETED_SHORTENED_NOTIFICATION_ACTION";
      v5 = @"Mark as Completed";
      goto LABEL_85;
    case 28:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Remind Me Tomorrow";
      goto LABEL_84;
    case 29:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Remind Me in an Hour";
      goto LABEL_84;
    case 30:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Remind Me in the Morning";
      goto LABEL_84;
    case 31:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Remind Me Next Weekend";
      goto LABEL_84;
    case 32:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Remind Me This Afternoon";
      goto LABEL_84;
    case 33:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Remind Me Tonight";
      goto LABEL_84;
    case 34:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ assigned you a reminder";
      goto LABEL_84;
    case 35:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ assigned you %lu reminders";
      goto LABEL_95;
    case 36:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"You’ve been assigned a reminder";
      goto LABEL_84;
    case 37:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"You’ve been assigned %lu reminders";
      goto LABEL_95;
    case 38:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"“%@” in your “%@” list.";
      goto LABEL_84;
    case 39:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"See the “%@” list.";
      goto LABEL_84;
    case 40:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ assigned you an item";
      goto LABEL_84;
    case 41:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ assigned you %lu items";
      goto LABEL_95;
    case 42:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"You’ve been assigned an item";
      goto LABEL_84;
    case 43:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"You’ve been assigned %lu items";
      goto LABEL_95;
    case 44:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"View";
      goto LABEL_84;
    case 45:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Decline";
      goto LABEL_84;
    case 46:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Decline All";
      goto LABEL_84;
    case 47:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%u more lists with assignments";
      goto LABEL_84;
    case 48:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"New Assignment";
      goto LABEL_84;
    case 49:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"New List";
      goto LABEL_84;
    case 50:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Unknown";
      goto LABEL_84;
    case 51:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"CUSTOM_SMART_LIST_MORNING_START_HOUR";
      goto LABEL_92;
    case 52:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"CUSTOM_SMART_LIST_MORNING_END_HOUR";
      goto LABEL_81;
    case 53:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"CUSTOM_SMART_LIST_AFTERNOON_START_HOUR";
      goto LABEL_81;
    case 54:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"CUSTOM_SMART_LIST_AFTERNOON_END_HOUR";
      goto LABEL_79;
    case 55:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"CUSTOM_SMART_LIST_EVENING_START_HOUR";
LABEL_79:
      v5 = @"17";
      goto LABEL_85;
    case 56:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"CUSTOM_SMART_LIST_EVENING_END_HOUR";
      goto LABEL_68;
    case 57:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"CUSTOM_SMART_LIST_NIGHT_START_HOUR";
      goto LABEL_68;
    case 58:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"CUSTOM_SMART_LIST_NIGHT_END_HOUR";
LABEL_92:
      v5 = @"6";
      goto LABEL_85;
    case 59:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"TIME_OF_DAY_CREATION_MORNING";
      v5 = @"9";
      goto LABEL_85;
    case 60:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"TIME_OF_DAY_CREATION_NOON";
LABEL_81:
      v5 = @"12";
      goto LABEL_85;
    case 61:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"TIME_OF_DAY_CREATION_AFTERNOON";
      v5 = @"15";
      goto LABEL_85;
    case 62:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"TIME_OF_DAY_CREATION_EVENING";
      goto LABEL_54;
    case 63:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"TIME_OF_DAY_CREATION_NIGHT";
LABEL_68:
      v5 = @"21";
      goto LABEL_85;
    case 64:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"TIME_OF_DAY_CREATION_TONIGHT";
LABEL_54:
      v5 = @"18";
      goto LABEL_85;
    case 65:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ added “%@” to %@";
      goto LABEL_84;
    case 66:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"“%@“ was added to %@";
      goto LABEL_84;
    case 67:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ added %lu reminders to %@";
      goto LABEL_95;
    case 68:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%lu reminders were added to %@";
      goto LABEL_95;
    case 69:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"New reminders added";
      goto LABEL_84;
    case 70:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ added %lu items to %@";
      goto LABEL_95;
    case 71:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%lu items were added to %@";
      goto LABEL_95;
    case 72:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ completed “%@” in %@";
      goto LABEL_84;
    case 73:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"“%@“ was completed in %@";
      goto LABEL_84;
    case 74:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ completed %lu reminders in %@";
      goto LABEL_95;
    case 75:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%lu reminders were completed in %@";
      goto LABEL_95;
    case 76:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"New reminders completed";
      goto LABEL_84;
    case 77:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@ completed %lu items in %@";
      goto LABEL_95;
    case 78:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%lu items were completed in %@";
LABEL_95:
      v5 = &stru_1F0D67F00;
      v6 = @"PluralLocalizable";
      goto LABEL_86;
    case 79:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"Family Groceries";
      goto LABEL_84;
    case 80:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"None";
      goto LABEL_84;
    case 81:
      v2 = REMBundleGet();
      v3 = v2;
      v4 = @"%@, %@";
LABEL_84:
      v5 = &stru_1F0D67F00;
LABEL_85:
      v6 = 0;
LABEL_86:
      v1 = [v2 localizedStringForKey:v4 value:v5 table:v6];

      break;
    default:
      break;
  }

  return v1;
}

id REMBundleGet()
{
  if (REMBundleGet_onceToken != -1)
  {
    REMBundleGet_cold_1();
  }

  v1 = REMBundleGet_bundle;

  return v1;
}

uint64_t __REMBundleGet_block_invoke()
{
  REMBundleGet_bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x16u);
}

void sub_19A0E51DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_19A0E6140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

id clientDescription(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [v1 crdtID];
  v5 = [v2 stringWithFormat:@"<%@: %p>{crdtID: %@}", v3, v1, v4];

  return v5;
}

void sub_19A0E7484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_19A0E7DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_19A0E7F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A0E80F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_19A0E8410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  replica_manager::ReplicaManager::~ReplicaManager(&a9);

  _Unwind_Resume(a1);
}

void sub_19A0E8734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19A0E8AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_19A0E8E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_19A0E90B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A0EA18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A0EA268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::ReplicaEntry>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A0EA344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

id REMGetRecurrenceUIDFromRealUID(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = REMGetRealUIDFromRecurrenceUID(a1);
  [v4 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [v3 stringWithFormat:@"%@/RID=%llu", v5, v7];

  return v8;
}

id REMGetRealUIDFromRecurrenceUID(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"/RID="];
  v3 = v1;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  return v3;
}

id _iCalendarDataFromICSCalendar(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithCalendar:v3];
  v6 = v5;
  if (a2)
  {
    v7 = 68;
  }

  else
  {
    v7 = 4;
  }

  v8 = [v5 ICSDataWithOptions:v7];

  objc_autoreleasePoolPop(v4);

  return v8;
}

uint64_t REMWeekdayFromICSWeekday(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 1) >= 7)
  {
    v2 = +[REMLogStore write];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      REMWeekdayFromICSWeekday_cold_1(v1, v2);
    }

    return 1;
  }

  return v1;
}

void sub_19A0F6314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0x16u);
}

void sub_19A0F8E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19A0F9140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19A0FA8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19A0FACE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19A0FB240(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_19A0FC36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19A0FCA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  os_activity_scope_leave(&state);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_19A0FD144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, os_activity_scope_state_s state, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  os_activity_scope_leave(&state);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void sub_19A0FF170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19A0FF588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19A100610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19A100D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A10109C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19A104878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A10568C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19A107A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A107E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A1086B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_19A108F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19A109240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19A109490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_9@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_20(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
}

uint64_t OUTLINED_FUNCTION_21()
{
  result = MEMORY[0x1E696AD98];
  v2 = *(v0 + 40);
  return result;
}

void sub_19A10ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A110F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cdKeyToStorageKeyMap_block_invoke()
{
  v0 = cdKeyToStorageKeyMap_mapping;
  cdKeyToStorageKeyMap_mapping = MEMORY[0x1E695E0F8];
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

uint64_t recurrenceDateMatchesAnyDaySpecifiedInByDayList(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v8 setTimeZone:v7];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v19 = v5;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v8 components:512 fromDate:v6];
          v15 = [v13 dayOfTheWeek];
          v16 = [v14 weekday];

          if (v15 == v16)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v5 = v19;
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t recurrenceDateMatchesAnyDaySpecifiedInByMonthDayList(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v8 setTimeZone:v7];
    v9 = [v8 components:16 fromDate:v6];
    v10 = [v9 day];

    [v8 rangeOfUnit:16 inUnit:8 forDate:v6];
    v12 = v11;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      v17 = v12 + 1;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v24 + 1) + 8 * i) integerValue];
          if (v19 < 0)
          {
            if (v19 == v10 || v17 + v19 == v10)
            {
LABEL_17:
              v21 = 1;
              goto LABEL_18;
            }
          }

          else if (v19 == v10)
          {
            goto LABEL_17;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_18:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t recurrenceMonthMatchesAnyMonthSpecifiedInByMonthList(void *a1, void *a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695DEE8];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 currentCalendar];
  [v9 setTimeZone:v6];

  v10 = MEMORY[0x1E696AD98];
  v11 = [v9 components:8 fromDate:v7];

  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "month")}];

  v13 = [v8 containsObject:v12];
  return v13;
}

id dynamicMethodIMP(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = REMCheckedDynamicCast(v5, v3);

  v7 = [v6 storage];
  v8 = [v7 valueForKey:v4];

  return v8;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id _REMDateGetDateComponents(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a1;
    v7 = _REMSharedGregorianCalendarForTimeZone(v5);
    v8 = [v7 components:a2 fromDate:v6];

    [v8 setTimeZone:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id REMDateComponentsGetDateWithTimeZone(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v3 rem_isValidDateComponents])
  {
    v10 = 0;
    goto LABEL_14;
  }

  v5 = [v3 copy];
  if ([v5 rem_isAllDayDateComponents])
  {
    [v5 setTimeZone:0];
  }

  v6 = [v5 calendar];

  if (v6)
  {
    v7 = [v5 calendar];
    v8 = [v7 copy];
    [v5 setCalendar:v8];

    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    }

    v13 = v9;
    v15 = [v5 calendar];
    [v15 setTimeZone:v13];

    [v5 setTimeZone:v13];
    v12 = [v5 calendar];
    v11 = v12;
    v14 = v5;
  }

  else
  {
    if (!v5)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v11 = v5;
    v12 = _REMSharedGregorianCalendarForTimeZone(v4);
    v13 = v12;
    v14 = v11;
  }

  v10 = [v12 dateFromComponents:v14];

LABEL_13:
LABEL_14:

  return v10;
}

id _REMSharedGregorianCalendarForTimeZone(void *a1)
{
  v1 = a1;
  v2 = [v1 name];
  v3 = v2;
  if (v1)
  {
    if (!v2)
    {
      v4 = 0;
      goto LABEL_14;
    }
  }

  else
  {

    v3 = @"__floating";
  }

  os_unfair_lock_lock(&_REMSharedGregorianCalendarForTimeZone___sharedGeorgianCalendarLock);
  v5 = _REMSharedGregorianCalendarForTimeZone___calendarCache;
  if (!_REMSharedGregorianCalendarForTimeZone___calendarCache)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v7 = _REMSharedGregorianCalendarForTimeZone___calendarCache;
    _REMSharedGregorianCalendarForTimeZone___calendarCache = v6;

    v5 = _REMSharedGregorianCalendarForTimeZone___calendarCache;
  }

  v4 = [v5 objectForKeyedSubscript:v3];
  if (v4)
  {
    goto LABEL_10;
  }

  v8 = objc_alloc(MEMORY[0x1E695DEE8]);
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v4 = v9;
  if (v9)
  {
    [v9 setTimeZone:v1];
    [_REMSharedGregorianCalendarForTimeZone___calendarCache setObject:v4 forKeyedSubscript:v3];
LABEL_10:
    if ([(__CFString *)v3 isEqualToString:@"__floating"])
    {
      v10 = [v4 timeZone];
      v11 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
      v12 = [v10 rem_isEquivalentTo:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
        [v4 setTimeZone:v13];
      }
    }
  }

  os_unfair_lock_unlock(&_REMSharedGregorianCalendarForTimeZone___sharedGeorgianCalendarLock);
LABEL_14:

  return v4;
}

id REMInvalidICSAlarmDateComponents()
{
  if (REMInvalidICSAlarmDateComponents_onceToken != -1)
  {
    REMInvalidICSAlarmDateComponents_cold_1();
  }

  v1 = REMInvalidICSAlarmDateComponents_sInvalidDate;

  return v1;
}

void __REMInvalidICSAlarmDateComponents_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v1 = REMInvalidICSAlarmDateComponents_sInvalidDate;
  REMInvalidICSAlarmDateComponents_sInvalidDate = v0;

  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  v5 = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D928]];
  [REMInvalidICSAlarmDateComponents_sInvalidDate setCalendar:v5];
  v3 = REMInvalidICSAlarmDateComponents_sInvalidDate;
  v4 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v3 setTimeZone:v4];

  [REMInvalidICSAlarmDateComponents_sInvalidDate setYear:1976];
  [REMInvalidICSAlarmDateComponents_sInvalidDate setMonth:4];
  [REMInvalidICSAlarmDateComponents_sInvalidDate setDay:1];
  [REMInvalidICSAlarmDateComponents_sInvalidDate setHour:0];
  [REMInvalidICSAlarmDateComponents_sInvalidDate setMinute:55];
  [REMInvalidICSAlarmDateComponents_sInvalidDate setSecond:45];
}

uint64_t REMIsInvalidICSAlarmDateComponents(void *a1)
{
  v1 = a1;
  v2 = REMInvalidICSAlarmDateComponents();
  if ([v2 isEqual:v1])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 year];
    if (v4 == [v1 year] && (v5 = objc_msgSend(v2, "month"), v5 == objc_msgSend(v1, "month")) && (v6 = objc_msgSend(v2, "day"), v6 == objc_msgSend(v1, "day")) && (v7 = objc_msgSend(v2, "hour"), v7 == objc_msgSend(v1, "hour")) && (v8 = objc_msgSend(v2, "minute"), v8 == objc_msgSend(v1, "minute")) && (v9 = objc_msgSend(v2, "second"), v9 == objc_msgSend(v1, "second")))
    {
      v10 = [v1 timeZone];
      if (v10)
      {
        v11 = [v2 timeZone];
        v12 = [v1 timeZone];
        v3 = [v11 rem_isEquivalentTo:v12];
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void *REMSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *REMProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

void *REMClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef REMCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

uint64_t REMCheckedDynamicCast(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    REMCheckedDynamicCast_cold_1(v2, a1, &v5);
    return v5;
  }

  return v2;
}

void *REMCheckedProtocolCast(Protocol *a1, uint64_t a2)
{
  v2 = a2;
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    REMCheckedProtocolCast_cold_1(a2);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  if (([v2 conformsToProtocol:a1] & 1) == 0)
  {
    v6 = +[REMLog utility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = objc_opt_class();
      if (a1)
      {
        Name = protocol_getName(a1);
      }

      else
      {
        Name = "<No protocol supplied>";
      }

      v9 = 138412546;
      v10 = v7;
      v11 = 2080;
      v12 = Name;
      _os_log_fault_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_FAULT, "rem_log_fault_if (src != nil && result == nil) -- Unexpected object type in checked protocol cast %@ expects %s", &v9, 0x16u);
    }

    v2 = 0;
  }

LABEL_4:
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_19A12128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __cdSavedReminderKeyToStorageKeyMap_block_invoke()
{
  cdSavedReminderKeyToStorageKeyMap_mapping = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"titleDocumentData", @"metadata", @"titleDocument", @"metadata", @"priority", @"metadata", @"flagged", @"metadata", @"creationDate", @"metadata", @"recurrenceRules", @"metadata", @"startDateComponents", @"metadata", @"dueDateComponents", @"metadata", @"timeZone", @"metadata", @"allDay", @"metadata", @"notesDocumentData", @"metadata", @"notesDocument", @"metadata", @"alarms", @"metadata", @"dueDateDeltaAlertsData", @"metadata", @"hashtags", @"metadata", @"contactHandles", @"metadata", @"parentReminderID", @"parentSavedReminderIdentifier", @"listID", @"template", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __cdReminderKeyToStorageKeyMap_block_invoke()
{
  cdReminderKeyToStorageKeyMap_mapping = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"startDateComponents", @"startDate", @"dueDateComponents", @"dueDate", @"alarms", @"alarmStorage", @"listID", @"list", @"parentReminderID", @"parentReminder", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_19A124148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A12B338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A12B7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19A12BABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19A12BE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19A12C240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19A12C5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_19A12C878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A12CC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19A12D070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19A12D34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A12D550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A12D814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19A12DA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A12E45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

BOOL OUTLINED_FUNCTION_3_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v4, OS_LOG_TYPE_FAULT, a4, v5, 0xCu);
}

void sub_19A12EC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __cdSmartListSectionKeyToStorageKeyMap_block_invoke()
{
  cdSmartListSectionKeyToStorageKeyMap_mapping = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"parentID", @"smartList", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __cdTemplateSectionKeyToStorageKeyMap_block_invoke()
{
  cdTemplateSectionKeyToStorageKeyMap_mapping = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"parentID", @"template", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, v4, 0xCu);
}

uint64_t __cdListSectionKeyToStorageKeyMap_block_invoke()
{
  cdListSectionKeyToStorageKeyMap_mapping = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"parentID", @"list", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t rem_loggableSupportedVersionFrom(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v2 minimumSupportedVersion];
  v4 = [v2 effectiveMinimumSupportedVersion];
  v5 = [v2 isUnsupported];

  v6 = @"N";
  if (v5)
  {
    v6 = @"Y";
  }

  return [v1 stringWithFormat:@"supportedVersion=(V:%lld, EV:%lld, U:%@)", v3, v4, v6];
}

void sub_19A13CED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  os_activity_scope_leave(&state);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_19A13D310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_19A13D6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A14AC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _defaultPropertiesAffectingIsConcealed()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"markedForDeletion";
  v3[1] = @"effectiveMinimumSupportedAppVersion";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

BOOL OUTLINED_FUNCTION_7_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

uint64_t REMLocalizedTimeOfDayCreationHour(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1 + 59;
  }

  v3 = _REMGetLocalizedString(v2);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else if (a1 - 1 > 4)
  {
    v5 = 9;
  }

  else
  {
    v5 = qword_19A2311A0[a1 - 1];
  }

  return v5;
}

__CFString *NSStringFromMigrationStage(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"REMDatabaseMigrationContextStageUnknown";
  }

  else
  {
    return off_1E7509108[a1 - 1];
  }
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

id cloudBasedAccountTypes()
{
  if (cloudBasedAccountTypes_onceToken != -1)
  {
    cloudBasedAccountTypes_cold_1();
  }

  v1 = cloudBasedAccountTypes_result;

  return v1;
}

void __cloudBasedAccountTypes_block_invoke()
{
  v0 = cloudBasedAccountTypes_result;
  cloudBasedAccountTypes_result = &unk_1F0D99928;
}

id cloudKitAccountTypes()
{
  if (cloudKitAccountTypes_onceToken != -1)
  {
    cloudKitAccountTypes_cold_1();
  }

  v1 = cloudKitAccountTypes_result;

  return v1;
}

void __cloudKitAccountTypes_block_invoke()
{
  v0 = cloudKitAccountTypes_result;
  cloudKitAccountTypes_result = &unk_1F0D99940;
}

__CFString *NSStringFromREMAccountType(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return @"CalDAV";
    }

    if (a1 != 4)
    {
      if (a1 == 6)
      {
        return @"iCloud Non-primary";
      }

      goto LABEL_14;
    }

    return @"Exchange";
  }

  else
  {
    if (!a1)
    {
      v3 = +[REMLogStore read];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        NSStringFromREMAccountType_cold_1();
      }

      return @"Unknown";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return @"iCloud";
      }

LABEL_14:
      v4 = +[REMLogStore read];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        NSStringFromREMAccountType_cold_2(a1);
      }

      return @"Unknown";
    }

    return @"Local";
  }
}

__CFString *REMInternalDescriptionFromREMAccountType(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return @"CloudKit_Primary";
      }

      else
      {
        return @"CalDav";
      }
    }

    if (!a1)
    {
      return @"Unknown";
    }

    if (a1 == 1)
    {
      return @"Local";
    }

LABEL_20:
    v4 = +[REMLogStore read];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      NSStringFromREMAccountType_cold_2(a1);
    }

    return @"Undefined";
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return @"Exchange";
    }

    else
    {
      return @"LocalInternal";
    }
  }

  if (a1 == 6)
  {
    return @"CloudKit_Full";
  }

  if (a1 != 7)
  {
    goto LABEL_20;
  }

  v3 = +[REMLogStore read];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    REMInternalDescriptionFromREMAccountType_cold_1();
  }

  return @"count";
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_19A15DE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A15E7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_19A16AB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A16ACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A16AE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A16B090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A16B39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A16C0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A16C980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUMUserManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUMUserManagerClass_softClass;
  v7 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUMUserManagerClass_block_invoke;
    v3[3] = &unk_1E75093A0;
    v3[4] = &v4;
    __getUMUserManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19A16CA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  UserManagementLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UMUserManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUMUserManagerClass_block_invoke_cold_1();
    UserManagementLibrary();
  }
}

void UserManagementLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __UserManagementLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E75093C0;
    v4 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __UserManagementLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getUMUserPersonaAttributesClass_block_invoke(uint64_t a1)
{
  UserManagementLibrary();
  result = objc_getClass("UMUserPersonaAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUMUserPersonaAttributesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUMUserPersonaAttributesClass_block_invoke_cold_1();
    return +[(_REMNSPersistentHistoryTransactionStorage *)v3];
  }

  return result;
}

char *NewBase64Decode(char *__s, size_t a2, uint64_t *a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v4 = strlen(__s);
  }

  result = malloc_type_calloc(3 * (v4 >> 2), 1uLL, 0x100004077774924uLL);
  v7 = 0;
  if (v4)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v15 = 0;
      do
      {
        v10 = v8;
        v11 = base64DecodeLookup[__s[v8]];
        if (v11 != 65)
        {
          *(&v15 + v9++) = v11;
          if (v9 == 4)
          {
            break;
          }
        }

        v8 = v10 + 1;
      }

      while (v10 + 1 < v4);
      v12 = BYTE1(v15);
      v13 = &result[v7];
      *v13 = (BYTE1(v15) >> 4) | (4 * v15);
      v14 = BYTE2(v15);
      v13[1] = (BYTE2(v15) >> 2) | (16 * v12);
      v13[2] = HIBYTE(v15) | (v14 << 6);
      v7 = v7 + v9 - 1;
      v8 = v10 + 1;
    }

    while (v10 + 1 < v4);
  }

  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

_BYTE *NewBase64Encode(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  if (a2 == 3 * (a2 / 3))
  {
    v8 = a2 / 3;
  }

  else
  {
    v8 = a2 / 3 + 1;
  }

  v9 = (v8 >> 3) & 0x7FFFFFFFFFFFFFFLL;
  if (!a3)
  {
    v9 = 0;
  }

  result = malloc_type_calloc((v9 + 4 * v8) | 1, 1uLL, 0x100004077774924uLL);
  if (result)
  {
    v11 = 0;
    v12 = 0;
    if (a3)
    {
      v13 = 48;
    }

    else
    {
      v13 = a2;
    }

    v14 = v13;
    while (1)
    {
      v15 = v14 >= a2 ? a2 : v14;
      if (v11 + 2 >= v15)
      {
        v18 = v11;
      }

      else
      {
        v16 = (a1 + v11);
        v17 = &result[v12 + 3];
        do
        {
          v18 = v11 + 3;
          *(v17 - 3) = base64EncodeLookup[*v16 >> 2];
          *(v17 - 2) = base64EncodeLookup[(v16[1] >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*v16 & 3))];
          *(v17 - 1) = base64EncodeLookup[(v16[2] >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v16[1] & 0xF))];
          v12 += 4;
          *v17 = base64EncodeLookup[v16[2] & 0x3F];
          v17 += 4;
          v16 += 3;
          v19 = v11 + 5;
          v11 += 3;
        }

        while (v19 < v15);
      }

      if (v14 >= a2)
      {
        break;
      }

      *&result[v12] = 2573;
      v12 += 2;
      v14 = v15 + v13;
      v11 = v18;
    }

    v20 = v18 + 1;
    if (v18 + 1 >= a2)
    {
      if (v18 >= a2)
      {
        goto LABEL_26;
      }

      v23 = &result[v12];
      *v23 = base64EncodeLookup[*(a1 + v18) >> 2];
      v23[1] = base64EncodeLookup[16 * (*(a1 + v18) & 3)];
      v22 = 61;
    }

    else
    {
      v21 = &result[v12];
      *v21 = base64EncodeLookup[*(a1 + v18) >> 2];
      v21[1] = base64EncodeLookup[(*(a1 + v20) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(a1 + v18) & 3))];
      v22 = base64EncodeLookup[4 * (*(a1 + v20) & 0xF)];
    }

    v24 = &result[v12];
    v24[2] = v22;
    v12 += 4;
    v24[3] = 61;
LABEL_26:
    result[v12] = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return result;
}

void sub_19A178240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __cdKeyToStorageKeyMap_block_invoke_0()
{
  cdKeyToStorageKeyMap_mapping_0 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"parentAccountID", @"parentAccount", @"parentListID", @"parentList", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void sub_19A180BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromREMFetchRequestType(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown REMFetchRequestType %ld", a1];
  }

  else
  {
    v2 = off_1E7509500[a1];
  }

  return v2;
}

uint64_t __cdKeyToStorageKeyMap_block_invoke_1()
{
  cdKeyToStorageKeyMap_mapping_1 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"parentAccountID", @"parentAccount", @"parentListID", @"parentList", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_3_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_19A1922C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUMUserManagerClass_block_invoke_0(uint64_t a1)
{
  UserManagementLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UMUserManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUMUserManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUMUserManagerClass_block_invoke_cold_1();
    UserManagementLibrary_0();
  }
}

void UserManagementLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __UserManagementLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7509708;
    v4 = 0;
    UserManagementLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!UserManagementLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __UserManagementLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getUMUserPersonaAttributesClass_block_invoke_0(uint64_t a1)
{
  UserManagementLibrary_0();
  result = objc_getClass("UMUserPersonaAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUMUserPersonaAttributesClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUMUserPersonaAttributesClass_block_invoke_cold_1();
    return [(REMDisplayDateUtils *)v3 _displayDateWithDueDateComponents:v4 alarms:v5 hasAlarmDateComponents:v6 floatingDateComponents:v7 nonFloatingDateComponents:v8 displayDateUtils:v9, v10];
  }

  return result;
}

void sub_19A198FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __cdKeyToStorageKeyMap_block_invoke_2()
{
  cdKeyToStorageKeyMap_mapping_2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"parentAccountID", @"parentAccount", 0}];

  return MEMORY[0x1EEE66BB8]();
}

id rem_ICSDateFromNSDate(void *a1, void *a2)
{
  if (a2)
  {
    rem_ICSDateFromNSDateInTimezone(a1, a2);
  }

  else
  {
    rem_ICSFloatingDateTimeFromNSDateInTimezone(a1, 0);
  }
  v2 = ;

  return v2;
}

id rem_ICSDateFromNSDateInTimezone(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  }

  [v3 timeIntervalSinceReferenceDate];
  v6 = rem_DateComponentsFromAbsoluteTime(v4, v5);
  v7 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v6 month:"year") day:objc_msgSend(v6 hour:"month") minute:objc_msgSend(v6 second:"day") timeZone:{objc_msgSend(v6, "hour"), objc_msgSend(v6, "minute"), objc_msgSend(v6, "second"), v4}];

  return v7;
}

id rem_DateComponentsFromAbsoluteTime(void *a1, double a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a2];
  v5 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v6 = [v5 copy];

  if (v3)
  {
    [v6 setTimeZone:v3];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    [v6 setTimeZone:v7];
  }

  v8 = [v6 components:252 fromDate:v4];

  return v8;
}

id rem_ICSFloatingDateTimeFromNSDateInTimezone(void *a1, void *a2)
{
  v3 = a2;
  [a1 timeIntervalSinceReferenceDate];
  v5 = rem_DateComponentsFromAbsoluteTime(v3, v4);

  v6 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v5 month:"year") day:objc_msgSend(v5 hour:"month") minute:objc_msgSend(v5 second:{"day"), objc_msgSend(v5, "hour"), objc_msgSend(v5, "minute"), objc_msgSend(v5, "second")}];

  return v6;
}

void ___setSubcomponentsOnICSComponent_block_invoke()
{
  v3 = REMInvalidICSAlarmDateComponents();
  v0 = [objc_alloc(MEMORY[0x1E69E3C98]) initWithYear:objc_msgSend(v3 month:"year") day:objc_msgSend(v3 hour:"month") minute:objc_msgSend(v3 second:{"day"), objc_msgSend(v3, "hour"), objc_msgSend(v3, "minute"), objc_msgSend(v3, "second")}];
  v1 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDate:v0];
  v2 = _setSubcomponentsOnICSComponent_sInvalidTrigger;
  _setSubcomponentsOnICSComponent_sInvalidTrigger = v1;
}

uint64_t REMReminderPriorityLevelForPriority(unint64_t a1)
{
  v1 = 3;
  v2 = 1;
  if (a1 == 5)
  {
    v2 = 2;
  }

  if (a1 >= 5)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t REMReminderDefaultPriorityForPriorityLevel(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return 9 - 4 * (a1 - 1);
  }
}

__CFString *NSStringFromPriorityLevel(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E75097E8[a1 - 1];
  }
}

__CFString *PropertyNameFromREMReminderChangeTrackingProperty(uint64_t a1)
{
  if ((a1 - 1) < 0x11)
  {
    return off_1E7509800[a1 - 1];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unexpected REMReminderChangeTrackingProperty key.", v1, v2}];
  return 0;
}

void OUTLINED_FUNCTION_0_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_19A1A5AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A1A6008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A1B0034(_Unwind_Exception *a1)
{
  MEMORY[0x19A8FD070](v4, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void std::vector<CRDT::Document_DocObject *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRDT::Document_DocObject *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_19A1B0C68(_Unwind_Exception *a1)
{
  MEMORY[0x19A8FD070](v2, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7507700, MEMORY[0x1E69E5278]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7507700, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CRDT::Document_DocObject *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::string::__throw_length_error[abi:ne200100]()
{
  std::__throw_length_error[abi:ne200100]("basic_string");
}

{
  std::__throw_length_error[abi:ne200100]("basic_string");
}

void sub_19A1B181C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v10, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_19A1B1974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x19A8FD070](v12, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void sub_19A1B25FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *removeDirectToSinkEdges(void *result)
{
  v1 = result[7];
  v2 = (v1 - result[6]) >> 3;
  if (v2 >= 2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = v3[6];
      v6 = *(v5 + 8 * v4);
      v7 = *(v6 + 72);
      if (v7 < 2)
      {
        ++v4;
      }

      else
      {
        *(v6 + 72) = v7 - 1;
        v8 = v5 + 8 * v4;
        v9 = v1 - (v8 + 8);
        if (v1 != v8 + 8)
        {
          result = memmove((v5 + 8 * v4), (v8 + 8), v1 - (v8 + 8));
        }

        v1 = v8 + v9;
        v3[7] = v8 + v9;
        --v2;
      }
    }

    while (v4 < v2);
  }

  return result;
}

void minIdPath(TopoSubstring *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v3 = *a1;
  v4 = *(v2 + 2);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 1.0;
  v6 = (v2 + 48);
  v5 = *(v2 + 6);
  v7 = *(v2 + 7);
  if (v7 == v5)
  {
    v8 = 0;
  }

  else
  {
    v61 = (v2 + 56);
    v8 = 0;
    while (1)
    {
      if ((v7 - v5) >= 9)
      {
        removeDirectToSinkEdges(v2);
        v7 = *v61;
        v5 = *v6;
      }

      v9 = v7 - v5;
      if (v9 != 8)
      {
        break;
      }

      v2 = *v5;
      if (*(*v5 + 18) > 1u)
      {
        v8 = 1;
        goto LABEL_82;
      }

      v10 = v3;
      v11 = *v2;
      v12 = v11;
      v13 = *(v2 + 2);
      if (v4 < v13)
      {
        v14 = v10;
LABEL_17:
        v13 = v4;
        goto LABEL_18;
      }

      v14 = v11;
      if (v4 == v13)
      {
        if ([v10 TTCompare:v11] == -1)
        {
          v14 = v10;
        }

        else
        {
          v14 = v12;
        }

        goto LABEL_17;
      }

LABEL_18:
      v3 = v14;

      v4 = v13;
LABEL_78:
      v6 = (v2 + 48);
      v5 = *(v2 + 6);
      v7 = *(v2 + 7);
      v61 = (v2 + 56);
      if (v7 == v5)
      {
        goto LABEL_82;
      }
    }

    v60 = v6;
    v15 = v72;
    v16 = v73;
    if (v73 == v72)
    {
      v17 = v61;
    }

    else
    {
      v17 = v61;
      do
      {
        v18 = v16[-3].n128_u64[1];
        v16 = (v16 - 40);
      }

      while (v16 != v15);
      v9 = *v61 - *v60;
    }

    v73 = v15;
    std::vector<std::pair<minIdPathData,TopoSubstring *>>::reserve(&v72, v9 >> 3);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::clear(&v69);
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__rehash<true>(&v69, vcvtps_u32_f32((*v17 - *v60) / v71));
    v19 = *v60;
    v20 = *v17;
    while (v19 != v20)
    {
      obj = *v19;
      *&v66 = &obj;
      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v69, &obj)[3] = 1;
      *&v66 = 0;
      DWORD2(v66) = 0;
      v67 = obj;
      v68 = obj;
      std::vector<std::pair<minIdPathData,TopoSubstring *>>::push_back[abi:ne200100](&v72, &v66);

      ++v19;
    }

    v21 = MEMORY[0x1E69E5398];
    do
    {
      v66 = 0u;
      v67 = 0u;
      LODWORD(v68) = 1065353216;
      v22 = v70;
      if (v70)
      {
        while (1)
        {
          v23 = v22[2];
          v24 = v22[3];
          v65 = v23;
          if (v24 < *(v23 + 72))
          {
            goto LABEL_56;
          }

          minIdPath(&obj, v23);
          if (v73 == v72)
          {
            goto LABEL_48;
          }

          v25 = 0;
          v26 = obj;
          if (0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3) <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3);
          }

          do
          {
            if (v72[1].n128_u64[v25] == v65 && v72->n128_u64[v25])
            {
              v28 = v26;
              v29 = v63;
              v30 = v72 + v25 * 8;
              v31 = v72->n128_u64[v25];
              v32 = v31;
              v33 = *(v30 + 2);
              if (v29 < v33)
              {
                v34 = v28;
                goto LABEL_38;
              }

              v34 = v31;
              if (v29 == v33)
              {
                if ([v28 TTCompare:v31] == -1)
                {
                  v34 = v28;
                }

                else
                {
                  v34 = v32;
                }

LABEL_38:
                v33 = v29;
              }

              v26 = v34;

              v63 = v33;
            }

            v25 += 5;
            --v27;
          }

          while (v27);
          obj = v26;
          if (v73 != v72)
          {
            v35 = 0;
            v36 = v63;
            if (0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3) <= 1)
            {
              v37 = 1;
            }

            else
            {
              v37 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3);
            }

            do
            {
              v38 = v72 + v35 * 8;
              v39 = &v72[1].n128_u64[v35];
              if (*v39 == v65)
              {
                objc_storeStrong((v72 + v35 * 8), v26);
                *(v38 + 2) = v36;
                *v39 = v64;
              }

              v35 += 5;
              --v37;
            }

            while (v37);
          }

LABEL_48:
          v40 = v3;
          v41 = obj;
          v42 = v41;
          v43 = v63;
          if (v4 < v63)
          {
            v44 = v40;
            goto LABEL_54;
          }

          v44 = v41;
          if (v4 == v63)
          {
            if ([v40 TTCompare:v41] == -1)
            {
              v44 = v40;
            }

            else
            {
              v44 = v42;
            }

LABEL_54:
            v43 = v4;
          }

          v3 = v44;

          v24 = *(&v64 + 1);
          v65 = v64;

          v4 = v43;
LABEL_56:
          v45 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(&v66, &v65);
          if (v45)
          {
            v45[3] += v24;
          }

          else
          {
            obj = &v65;
            std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(&v66, &v65)[3] = v24;
          }

          v22 = *v22;
          if (!v22)
          {
            v46 = *&v68;
            v47 = v67;
            v21 = MEMORY[0x1E69E5398];
            goto LABEL_62;
          }
        }
      }

      v47 = 0;
      v46 = 1.0;
LABEL_62:
      v71 = v46;
      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<TopoSubstring *,unsigned long>,void *> *>>(&v69, v47, 0);
      v48 = v72;
      v49 = v73;
      if (v73 - v72 < 1)
      {
        v54 = 0;
        v50 = 0;
      }

      else
      {
        v50 = 0xCCCCCCCCCCCCCCCDLL * ((v73 - v72) >> 3);
        while (1)
        {
          v51 = operator new(40 * v50, v21);
          if (v51)
          {
            break;
          }

          v52 = v50 >> 1;
          v53 = v50 > 1;
          v50 >>= 1;
          if (!v53)
          {
            v54 = 0;
            v50 = v52;
            goto LABEL_69;
          }
        }

        v54 = v51;
      }

LABEL_69:
      std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v48, v49, 0xCCCCCCCCCCCCCCCDLL * ((v49 - v48) >> 3), v54, v50);
      if (v54)
      {
        operator delete(v54);
      }

      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v66);
    }

    while (*(&v70 + 1) > 1uLL);
    if (*v61 != *v60)
    {
      v55 = 0;
      v56 = *v61 - *v60;
      if (v56 <= 1)
      {
        v56 = 1;
      }

      v57 = 4;
      do
      {
        (*v60)[v55++] = v72->n128_u64[v57];
        v57 += 5;
      }

      while (v56 != v55);
    }

    v2 = *(v70 + 16);
    v8 = *(v70 + 24);
    if (v8 >= *(v2 + 18))
    {
      goto LABEL_78;
    }
  }

LABEL_82:
  v58 = v3;
  *a2 = v58;
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;
  *(a2 + 24) = v8;
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&v69);
  *&v69 = &v72;
  std::vector<std::pair<minIdPathData,TopoSubstring *>>::__destroy_vector::operator()[abi:ne200100](&v69);
}

void sub_19A1B57B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a23);
  a23 = (v25 - 120);
  std::vector<std::pair<minIdPathData,TopoSubstring *>>::__destroy_vector::operator()[abi:ne200100](&a23);

  _Unwind_Resume(a1);
}

void *std::vector<std::pair<minIdPathData,TopoSubstring *>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>>(result, a2);
    }

    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_19A1B591C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<minIdPathData,TopoSubstring *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<minIdPathData,TopoSubstring *>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<minIdPathData,TopoSubstring *>>::__emplace_back_slow_path<std::pair<minIdPathData,TopoSubstring *>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t traverseRecursive(uint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  v17[0] = a1;
  v5 = a3;
  v16 = 0;
  if (*(v4 + 72) >= 2u)
  {
    v6 = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(a2, v17);
    if (!v6)
    {
      v14 = *(v17[0] + 72);
      v17[2] = v17;
      v10 = 0;
      *(std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(a2, v17) + 6) = v14 - 1;
      goto LABEL_20;
    }

    v7 = *(v6 + 6) - 1;
    *(v6 + 6) = v7;
    if (v7)
    {
      goto LABEL_18;
    }

    v4 = v17[0];
  }

  v5[2](v5, v4, &v16);
  while (1)
  {
    if (v16)
    {
      v10 = 1;
      goto LABEL_20;
    }

    v8 = *(v17[0] + 48);
    v9 = *(v17[0] + 56);
    if (v9 - v8 != 8 || *(*v8 + 72) != 1)
    {
      break;
    }

    v17[0] = *v8;
    (v5[2])(v5);
  }

  if (v8 == v9)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_20;
  }

  v11 = v8 + 8;
  do
  {
    v12 = traverseRecursive(*(v11 - 8), a2, v5);
    v10 = v12;
    if (v11 == v9)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v11 += 8;
  }

  while ((v13 & 1) == 0);
LABEL_20:

  return v10;
}

void traverseUnorderedSimple(uint64_t a1, void *a2)
{
  v14 = a1;
  v2 = a2;
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  std::deque<TopoSubstring *>::push_back(v10, &v14);
  std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v12, &v14);
  for (i = *(&v11 + 1); *(&v11 + 1); i = *(&v11 + 1))
  {
    v4 = i - 1;
    v5 = *(*(*(&v10[0] + 1) + (((v11 + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v11 + v4) & 0x1FF));
    *(&v11 + 1) = v4;
    std::deque<TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v10, 1);
    v2[2](v2, v5, &v9);
    if (v9)
    {
      break;
    }

    v7 = *(v5 + 48);
    v6 = *(v5 + 56);
    while (v7 != v6)
    {
      v8 = *v7;
      if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v12, &v8))
      {
        std::deque<TopoSubstring *>::push_back(v10, &v8);
        std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v12, &v8);
      }

      ++v7;
    }
  }

  std::deque<TopoSubstring *>::~deque[abi:ne200100](v10);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v12);
}

void sub_19A1B5CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::deque<TopoSubstring *>::~deque[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va1);

  _Unwind_Resume(a1);
}

void traverseUnordered(uint64_t a1, void *a2)
{
  v21 = a1;
  v2 = a2;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  std::deque<TopoSubstring *>::push_back(v17, &v21);
  std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v19, &v21);
  for (i = *(&v18 + 1); *(&v18 + 1); i = *(&v18 + 1))
  {
    v4 = i - 1;
    v5 = *(*(*(&v17[0] + 1) + (((v18 + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v18 + v4) & 0x1FF));
    *(&v18 + 1) = v4;
    std::deque<TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](v17, 1);
    v2[2](v2, v5, &v16);
    if (v16)
    {
      break;
    }

    v6 = (v5 + 48);
    v7 = *(v5 + 48);
    v8 = (v5 + 56);
    if (*(v5 + 56) - v7 == 8)
    {
      v9 = 0;
      do
      {
        v10 = *v7;
        if (*(*v7 + 72) != 1)
        {
          break;
        }

        v2[2](v2, v10, &v16);
        v9 = v16;
        if ((v16 & 1) != 0 || v10 == v5)
        {
          goto LABEL_20;
        }

        v12 = *(v10 + 48);
        v11 = (v10 + 48);
        v7 = v12;
        v8 = v11 + 1;
        v6 = v11;
      }

      while (v11[1] - v12 == 8);
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      break;
    }

    v13 = *v6;
    v14 = *v8;
    while (v13 != v14)
    {
      v15 = *v13;
      if (*(v15 + 72) > 1u)
      {
        if (!std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(v19, &v15))
        {
          std::deque<TopoSubstring *>::push_back(v17, &v15);
          std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(v19, &v15);
        }
      }

      else
      {
        std::deque<TopoSubstring *>::push_back(v17, &v15);
      }

      ++v13;
    }
  }

LABEL_20:
  std::deque<TopoSubstring *>::~deque[abi:ne200100](v17);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v19);
}

void sub_19A1B5EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::deque<TopoSubstring *>::~deque[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va1);

  _Unwind_Resume(a1);
}

void hasLoop(TopoSubstring *a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v4[3] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___Z7hasLoopP13TopoSubstring_block_invoke;
  v3[3] = &unk_1E7509A38;
  v3[4] = v4;
  traverseUnordered(a1, v3);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___Z7hasLoopP13TopoSubstring_block_invoke_2;
  v2[3] = &unk_1E7509A38;
  v2[4] = v4;
  traverseRecursive(a1, v2);
}

void sub_19A1B6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id updateTopoID(const TopoID *a1, const TopoIDRange *a2, const TopoIDRange *a3)
{
  v6 = a1->var0;
  var1 = a1->var1;
  if ([a1->var0 isEqual:a2->var0.var0])
  {
    v8 = a1->var1;
    v9 = a2->var0.var1;
    if (v8 >= v9 && v8 < a2->var1 + v9)
    {
      v10 = a3->var0.var0;

      v11 = a1->var1 + a3->var0.var1 - a2->var0.var1;
      return v10;
    }
  }

  return v6;
}

void updateTopoIDRange(TopoIDRange *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a1->var0.var0 isEqual:*a2])
  {
    v8 = a1->var0.var0;
    v9 = a1->var1 + a1->var0.var1;
    location = v8;
    v39 = v9;
    if (TopoID::operator<=(&location, a2))
    {

LABEL_8:
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, a1);
      return;
    }

    v10 = *a2;
    v11 = *(a2 + 4) + *(a2 + 2);
    v35 = v10;
    v36 = v11;
    v12 = TopoID::operator>=(a1, &v35);

    if (v12)
    {
      goto LABEL_8;
    }

    var1 = a1->var0.var1;
    v14 = *(a2 + 2);
    if (v14 > var1)
    {
      TopoIDRange::splitPairAt(a1, v14 - var1, &location);
      v15 = *a2;
      v16 = *(a2 + 4) + *(a2 + 2);
      v17 = v41;
      v18 = v17;
      if (v16 >= v43 + v42)
      {
        if (v16 != v43 + v42)
        {

          goto LABEL_24;
        }

        v28 = [v15 TTCompare:v17];

        if (v28 != -1)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      v19 = *(a2 + 4);
      v35 = v41;
      v36 = v42 + v19;
      v37 = v43 - v19;
      v43 = v19;
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &v35);

LABEL_24:
      v30 = *a3;
      v31 = *(a3 + 8);
      objc_storeStrong(&v41, v30);
      v42 = v31;
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &location);
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &v41);
      goto LABEL_25;
    }

    v20 = a1->var0.var0;
    v21 = a1->var1 + a1->var0.var1;
    v22 = *a2;
    v23 = v22;
    v24 = *(a2 + 4) + *(a2 + 2);
    if (v21 > v24)
    {

LABEL_15:
      v25 = *(a2 + 4) + *(a2 + 2) - a1->var0.var1;
      v26 = *a2;
      TopoIDRange::splitPairAt(a1, v25, &location);

      v27 = a1->var0.var1 + *(a3 + 8) - *(a2 + 2);
      objc_storeStrong(&location, *a3);
      v39 = v27;
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &location);
      std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &v41);
LABEL_25:

LABEL_26:
      return;
    }

    if (v21 == v24)
    {
      v29 = [v20 TTCompare:v22];

      if (v29 == 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v32 = a1->var0.var0;
    v40 = a1->var1;
    v33 = *a3;
    v34 = a1->var0.var1 + *(a3 + 8) - *(a2 + 2);
    location = v33;

    v39 = v34;
    std::vector<TopoIDRange>::push_back[abi:ne200100](a4, &location);
    goto LABEL_26;
  }

  std::vector<TopoIDRange>::push_back[abi:ne200100](a4, a1);
}

uint64_t std::vector<TopoIDRange>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<TopoIDRange>::__emplace_back_slow_path<TopoIDRange const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 16) = *(a2 + 16);
    result = v4 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL TopoID::operator<=(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 2);
  if (v4 == v5)
  {
    if ([*a1 isEqual:*a2])
    {
      return 1;
    }

    v4 = *(a1 + 8);
    v5 = *(a2 + 2);
  }

  if (v4 < v5)
  {
    return 1;
  }

  return v4 == v5 && [*a1 TTCompare:*a2] == -1;
}

BOOL TopoID::operator>=(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 2);
  if (v4 == v5)
  {
    if ([*a1 isEqual:*a2])
    {
      return 1;
    }

    v4 = *(a1 + 8);
    v5 = *(a2 + 2);
  }

  if (v4 > v5)
  {
    return 1;
  }

  return v4 == v5 && [*a1 TTCompare:*a2] == 1;
}

void TopoIDRange::splitPairAt(TopoIDRange *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = this->var0.var0;
  var1 = this->var0.var1;
  v8 = this->var0.var0;
  v9 = this->var0.var1 + a2;
  v10 = this->var1 - a2;
  *a3 = v6;
  *(a3 + 8) = var1;
  *(a3 + 16) = a2;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  v11 = v6;
}

void sub_19A1B6B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  _Block_object_dispose(&a17, 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v17 + 48);
  a9.super_class = TTMergeableString;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_19A1B6FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<TopoID,TopoID>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<TopoID,TopoID>>::__emplace_back_slow_path<std::pair<TopoID,TopoID> const&>(a1, a2);
  }

  else
  {
    std::vector<std::pair<TopoID,TopoID>>::__construct_one_at_end[abi:ne200100]<std::pair<TopoID,TopoID> const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_19A1B7D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19A1B831C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

char *std::vector<TopoSubstring *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRDT::Document_DocObject *>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<TopoSubstring *>::emplace_back<TopoSubstring * const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_19A1B8574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19A1B8650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_19A1B86C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19A1B8F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::vector<_NSRange>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(result, a2);
    }

    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_19A1B9750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::vector<TopoSubstring *>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRDT::Document_DocObject *>>(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_19A1B9FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  _Block_object_dispose(&a28, 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a34);
  _Block_object_dispose((v35 - 208), 8);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(v35 - 160);
  _Block_object_dispose((v35 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_19A1BAB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(va);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19A1BC474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a19);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a25);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a31);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(&a37);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v39 - 176);

  _Unwind_Resume(a1);
}

void std::vector<TopoSubstring *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<TopoSubstring *>::__append(a1, a2 - v2);
  }
}

void sub_19A1BCAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(v13 + 48);
  _Block_object_dispose((v14 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t std::deque<TopoSubstring *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<TopoSubstring **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<TopoSubstring **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void TopoSubstring::TopoSubstring(TopoSubstring *this, TopoID a2, int a3, int a4)
{
  var1 = a2.var1;
  var0 = a2.var0;
  *this = 0;
  *(this + 3) = 0;
  *(this + 10) = a3;
  *(this + 44) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 18) = 0;
  objc_storeStrong(this, a2.var0);
  *(this + 2) = var1;
  *(this + 4) = a4;
  v8 = *(this + 3);
  *(this + 3) = var0;
  v9 = var0;

  *(this + 8) = var1;
}

void TopoSubstring::TopoSubstring(TopoSubstring *this, TopoSubstring *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 4) = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 10) = *(a2 + 10);
  *(this + 44) = *(a2 + 44);
  *(this + 18) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
}

void std::vector<std::pair<minIdPathData,TopoSubstring *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 5);
        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>,std::pair<minIdPathData,TopoSubstring *>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 2);
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v6[4];
      v6 += 5;
      a4 += 40;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 5;
    }
  }
}

uint64_t std::__split_buffer<std::pair<minIdPathData,TopoSubstring *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::vector<std::pair<minIdPathData,TopoSubstring *>>::__emplace_back_slow_path<std::pair<minIdPathData,TopoSubstring *>>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>>(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = 40 * v2;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *a2 = 0;
  *v7 = v8;
  *(v7 + 8) = *(a2 + 2);
  *(v7 + 16) = *(a2 + 1);
  *(v7 + 32) = a2[4];
  *&v17 = 40 * v2 + 40;
  v9 = *(a1 + 8);
  v10 = 40 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<minIdPathData,TopoSubstring *>>,std::pair<minIdPathData,TopoSubstring *>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<minIdPathData,TopoSubstring *>>::~__split_buffer(&v15);
  return v14;
}

void sub_19A1BDC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<minIdPathData,TopoSubstring *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<TopoSubstring *,unsigned long>,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[3];
        v8[2] = a2[2];
        v8[3] = v9;
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__emplace_multi<std::pair<TopoSubstring * const,unsigned long> const&>();
  }
}

void sub_19A1BDDDC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_19A1BE380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(__n128 *a1, __n128 *a2, unint64_t a3, void **a4, uint64_t a5)
{
  v90 = a2;
  v91 = a1;
  if (a3 < 2)
  {
    return;
  }

  if (a3 == 2)
  {
    v6 = a2[-3].n128_u64[1];
    v90 = (a2 - 40);
    v86 = v6;
    v7 = a2[-2].n128_u32[0];
    v8 = a2[-2].n128_u64[1];
    v9 = a1->n128_u64[0];
    v10 = v9;
    v11 = a1[1].n128_u64[0];
    if (v8 == v11)
    {
      v18 = a1->n128_u32[2];
      if (v7 >= v18)
      {
        if (v7 != v18)
        {

          return;
        }

        v69 = [v86 TTCompare:v9];

        if (v69 != -1)
        {
          return;
        }
      }

      else
      {
      }
    }

    else
    {

      if (v8 >= v11)
      {
        return;
      }
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(&v91, &v90);
    return;
  }

  if (a3 <= 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v19 = &a1[2].n128_u64[1];
    if (&a1[2].n128_i8[8] == a2)
    {
      return;
    }

    v82 = 0;
    v20 = a1;
    while (1)
    {
      v21 = v20;
      v81 = v19;
      v22 = *v19;
      v23 = v20[3].n128_u32[0];
      v24 = v20[3].n128_u64[1];
      v25 = v20->n128_u64[0];
      v26 = v25;
      v28 = v21 + 1;
      v27 = v21[1].n128_u64[0];
      if (v24 == v27)
      {
        v29 = v21->n128_u32[2];
        if (v23 >= v29)
        {
          if (v23 != v29)
          {

            v20 = v81;
            goto LABEL_42;
          }

          v45 = [v22 TTCompare:v25];

          v20 = v81;
          if (v45 != -1)
          {
            goto LABEL_42;
          }
        }

        else
        {

          v20 = v81;
        }
      }

      else
      {

        v20 = v81;
        if (v24 >= v27)
        {
          goto LABEL_42;
        }
      }

      v87 = v20->n128_u64[0];
      v20->n128_u64[0] = 0;
      v84 = v21[3].n128_u32[0];
      v30 = v21[3].n128_u64[1];
      v31 = v21[4].n128_u64[0];
      v32 = v21[4].n128_u64[1];
      v33 = v21->n128_u64[0];
      v21->n128_u64[0] = 0;
      v20->n128_u64[0] = v33;
      v20->n128_u32[2] = v21->n128_u32[2];
      v20[1] = *v28;
      v20[2].n128_u64[0] = v21[2].n128_u64[0];
      if (v21 == a1)
      {
        v21 = a1;
        goto LABEL_41;
      }

      v78 = v32;
      v79 = v31;
      v34 = v82;
      while (1)
      {
        v35 = a1 + v34;
        v36 = v87;
        v37 = *(&a1[-2] + v34 - 8);
        v38 = v37;
        v39 = *(&a1[-1] + v34 - 8);
        if (v30 != v39)
        {

          if (v30 >= v39)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }

        v40 = *(v35 - 8);
        if (v84 >= v40)
        {
          break;
        }

LABEL_32:
        v28 = (v21 - 24);
        v42 = *(v35 - 5);
        *(v35 - 5) = 0;
        v43 = (a1 + v34);
        v44 = *(a1->n128_u64 + v34);
        *(a1->n128_u64 + v34) = v42;

        v43->n128_u32[2] = *(v35 - 8);
        v43[1] = *(a1 + v34 - 24);
        v43[2].n128_u64[0] = v43[-1].n128_u64[1];
        v21 = (v21 - 40);
        v34 -= 40;
        if (!v34)
        {
          v28 = a1 + 1;
          v21 = a1;
          goto LABEL_40;
        }
      }

      if (v84 == v40)
      {
        v41 = [v36 TTCompare:v37];

        if (v41 != -1)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_39:
      v21 = (a1 + v34);
      v28 = (a1 + v34 + 16);
LABEL_40:
      v20 = v81;
      v32 = v78;
      v31 = v79;
LABEL_41:
      v46 = v21->n128_u64[0];
      v21->n128_u64[0] = v87;

      v21->n128_u32[2] = v84;
      v28->n128_u64[0] = v30;
      v21[1].n128_u64[1] = v31;
      v21[2].n128_u64[0] = v32;
LABEL_42:
      v19 = &v20[2].n128_u64[1];
      v82 += 40;
      if (&v20[2].n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v15 = a3 >> 1;
  v16 = a1 + 40 * (a3 >> 1);
  if (a3 > a5)
  {
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(a1, a1 + 40 * (a3 >> 1), a3 >> 1, a4, a5);
    v17 = a3 - v15;
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v16, a2, v17, a4, a5);

    std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(a1, v16, a2, v15, v17, a4, a5);
    return;
  }

  std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(a1, (a1 + 40 * (a3 >> 1)), a3 >> 1, a4);
  v47 = &a4[5 * v15];
  std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>((a1 + 40 * (a3 >> 1)), a2, a3 - v15, v47);
  v89 = a3;
  v48 = &a4[5 * a3];
  v49 = a1 + 2;
  v83 = a4;
  v85 = v48;
  v50 = a4;
  v51 = v47;
  v88 = v47;
  while (v51 != v48)
  {
    v52 = v51->n128_u64[0];
    v53 = v51[1].n128_u64[0];
    v54 = v51->n128_u32[2];
    v55 = *v50;
    v56 = v55;
    v57 = v50[2];
    if (v53 == v57)
    {
      v58 = *(v50 + 2);
      if (v54 >= v58)
      {
        if (v54 != v58)
        {

LABEL_55:
          v62 = *v50;
          *v50 = 0;
          v63 = v49[-2].n128_u64[0];
          v49[-2].n128_u64[0] = v62;

          v49[-2].n128_u32[2] = *(v50 + 2);
          v49[-1] = *(v50 + 1);
          v49->n128_u64[0] = v50[4];
          v50 += 5;
          goto LABEL_56;
        }

        v61 = [v52 TTCompare:v55];

        if (v61 != -1)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }
    }

    else
    {

      if (v53 >= v57)
      {
        goto LABEL_55;
      }
    }

    v59 = v51->n128_u64[0];
    v51->n128_u64[0] = 0;
    v60 = v49[-2].n128_u64[0];
    v49[-2].n128_u64[0] = v59;

    v49[-2].n128_u32[2] = v51->n128_u32[2];
    v49[-1] = v51[1];
    v49->n128_u64[0] = v51[2].n128_u64[0];
    v51 = (v51 + 40);
LABEL_56:
    v48 = v85;
    v47 = v88;
    v49 = (v49 + 40);
    if (v50 == v88)
    {
      if (v51 != v85)
      {
        v64 = 0;
        do
        {
          v65 = v51 + v64;
          v66 = (v49 + v64);
          v67 = v51->n128_u64[v64 / 8];
          v51->n128_u64[v64 / 8] = 0;
          v68 = v49[-2].n128_u64[v64 / 8];
          v49[-2].n128_u64[v64 / 8] = v67;

          v66[-2].n128_u32[2] = v51->n128_u32[v64 / 4 + 2];
          v66[-1] = *(v51 + v64 + 16);
          v66->n128_u64[0] = v51[2].n128_u64[v64 / 8];
          v64 += 40;
        }

        while (v65 + 40 != v85);
      }

      goto LABEL_68;
    }
  }

  if (v50 != v47)
  {
    v70 = 0;
    do
    {
      v71 = &v49->n128_u64[v70];
      v72 = &v50[v70];
      v73 = v50[v70];
      v50[v70] = 0;
      v74 = v49[-2].n128_u64[v70];
      v49[-2].n128_u64[v70] = v73;

      *(v71 - 6) = v50[v70 + 1];
      *(v71 - 1) = *&v50[v70 + 2];
      *v71 = v50[v70 + 4];
      v70 += 5;
    }

    while (v72 + 5 != v47);
  }

LABEL_68:
  v75 = v83;
  if (v83)
  {
    for (i = 0; i < v89; ++i)
    {
      v77 = *v75;
      v75 += 5;
    }
  }
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(__n128 **a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1)->n128_u64[0];
  v2->n128_u64[0] = 0;
  v5 = v2->n128_u32[2];
  v12 = v2[1];
  v6 = *v3;
  *v3 = 0;
  v7 = v2->n128_u64[0];
  v2->n128_u64[0] = v6;

  v2->n128_u32[2] = *(v3 + 8);
  v2[1] = *(v3 + 16);
  v8 = *v3;
  *v3 = v4;

  *(v3 + 8) = v5;
  result = v12;
  *(v3 + 16) = v12;
  v10 = v2[2].n128_u64[0];
  v2[2].n128_u64[0] = *(v3 + 32);
  *(v3 + 32) = v10;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v6 = a2;
  v7 = a1;
  if (a3 == 2)
  {
    v10 = &a2[-3].n128_u64[1];
    v11 = a2[-3].n128_u64[1];
    v14 = v6[-2].n128_i64[1];
    v12 = &v6[-2].n128_i64[1];
    v13 = v14;
    v15 = (v12 - 1);
    v93 = *(v12 - 2);
    v95 = v12;
    v16 = (v12 + 2);
    v17 = *v7;
    v18 = v17;
    v20 = (v7 + 2);
    v19 = v7[2];
    v22 = (v7 + 1);
    v21 = *(v7 + 2);
    v98 = v7 + 4;
    if (v14 == v19)
    {
      v81 = v11;
      if (v93 < v21)
      {
        v82 = v16;
        v83 = v7;

        v7 = v10;
        v25 = v15;
        v26 = v95;
        v23 = a4;
        v27 = v82;
        v10 = v83;
        goto LABEL_60;
      }

      if (v93 == v21)
      {
        v88 = [v11 TTCompare:v17];

        v23 = a4;
        if (v88 == -1)
        {
          goto LABEL_7;
        }
      }

      else
      {

        v23 = a4;
      }
    }

    else
    {

      v23 = a4;
      if (v13 < v19)
      {
LABEL_7:
        v24 = v7;
        v7 = v10;
        v25 = v15;
        v26 = v95;
        v27 = v16;
        v10 = v24;
LABEL_60:
        v15 = v22;
        v16 = v98;
LABEL_69:
        v89 = *v7;
        *v7 = 0;
        v23->n128_u64[0] = v89;
        v23->n128_u32[2] = *v25;
        v23[1] = *v26;
        v23[2].n128_u64[0] = *v27;
        v90 = *v10;
        *v10 = 0;
        v23[2].n128_u64[1] = v90;
        v23[3].n128_u32[0] = *v15;
        result = *v20;
        *(v23 + 56) = *v20;
        v23[4].n128_u64[1] = *v16;
        return result;
      }
    }

    v25 = (v7 + 1);
    v26 = (v7 + 2);
    v27 = v7 + 4;
    v20 = v95;
    goto LABEL_69;
  }

  if (a3 == 1)
  {
    v8 = a1->n128_u64[0];
    a1->n128_u64[0] = 0;
    a4->n128_u64[0] = v8;
    a4->n128_u32[2] = a1->n128_u32[2];
    result = a1[1];
    a4[1] = result;
    a4[2].n128_u64[0] = a1[2].n128_u64[0];
    return result;
  }

  if (a3 > 8)
  {
    v62 = &a1->n128_u64[5 * (a3 >> 1)];
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(a1, v62, a3 >> 1, a4, a3 >> 1);
    std::__stable_sort<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(&v7[5 * (a3 >> 1)], v6, a3 - (a3 >> 1), v4 + 40 * (a3 >> 1), a3 - (a3 >> 1));
    v100 = &v7[5 * (a3 >> 1)];
    v102 = 0;
    v63 = v4 + 2;
    v64 = v100;
    while (1)
    {
      if (v64 == v6)
      {
        if (v7 != v62)
        {
          v84 = 0;
          do
          {
            v85 = (v63 + v84 * 8);
            v86 = &v7[v84];
            v87 = v7[v84];
            *v86 = 0;
            v85[-2].n128_u64[0] = v87;
            v85[-2].n128_u32[2] = v7[v84 + 1];
            result = *&v7[v84 + 2];
            v85[-1] = result;
            v85->n128_u64[0] = v7[v84 + 4];
            v84 += 5;
          }

          while (v86 + 5 != v62);
        }

        return result;
      }

      v65 = v64->n128_u64[0];
      v67 = v64 + 1;
      v66 = v64[1].n128_u64[0];
      v68 = v64->n128_u32[2];
      v69 = *v7;
      v70 = v69;
      v72 = (v7 + 2);
      v71 = v7[2];
      if (v66 == v71)
      {
        v73 = *(v7 + 2);
        if (v68 >= v73)
        {
          if (v68 != v73)
          {

LABEL_52:
            v76 = *v7;
            *v7 = 0;
            v63[-2].n128_u64[0] = v76;
            v63[-2].n128_u32[2] = *(v7 + 2);
            result = *v72;
            v63[-1] = *v72;
            v63->n128_u64[0] = v7[4];
            ++v102;
            v7 += 5;
            goto LABEL_53;
          }

          v75 = [v65 TTCompare:v69];

          if (v75 != -1)
          {
            goto LABEL_52;
          }
        }

        else
        {
        }
      }

      else
      {

        if (v66 >= v71)
        {
          goto LABEL_52;
        }
      }

      v74 = v64->n128_u64[0];
      v64->n128_u64[0] = 0;
      v63[-2].n128_u64[0] = v74;
      v63[-2].n128_u32[2] = v64->n128_u32[2];
      result = *v67;
      v63[-1] = *v67;
      v63->n128_u64[0] = v64[2].n128_u64[0];
      ++v102;
      v64 = (v64 + 40);
LABEL_53:
      v6 = a2;
      v63 = (v63 + 40);
      v62 = v100;
      if (v7 == v100)
      {
        if (v64 != a2)
        {
          v77 = 0;
          do
          {
            v78 = &v64->n128_u64[v77 / 8];
            v79 = (v63 + v77);
            v80 = v64->n128_u64[v77 / 8];
            *v78 = 0;
            v79[-2].n128_u64[0] = v80;
            v79[-2].n128_u32[2] = v64->n128_u32[v77 / 4 + 2];
            result = *(v64 + v77 + 16);
            v79[-1] = result;
            v79->n128_u64[0] = v64[2].n128_u64[v77 / 8];
            v77 += 40;
          }

          while (v78 + 5 != a2);
        }

        return result;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v28 = a1->n128_u64[0];
  a1->n128_u64[0] = 0;
  a4->n128_u64[0] = v28;
  a4->n128_u32[2] = a1->n128_u32[2];
  result = a1[1];
  a4[1] = result;
  a4[2].n128_u64[0] = a1[2].n128_u64[0];
  v101 = 1;
  v29 = &a1[2].n128_u64[1];
  if (&a1[2].n128_i8[8] == a2)
  {
    return result;
  }

  v30 = 0;
  v31 = a4;
  do
  {
    v99 = v29;
    v32 = *v29;
    v33 = v7[7];
    v94 = (v7 + 7);
    v34 = *(v7 + 12);
    v35 = v31->n128_u64[0];
    v36 = v35;
    v38 = v31 + 1;
    v37 = v31[1].n128_u64[0];
    if (v33 == v37)
    {
      v39 = v31->n128_u32[2];
      if (v34 >= v39)
      {
        if (v34 != v39)
        {

LABEL_33:
          v42 = v99;
          v59 = *v99;
          *v99 = 0;
          v31[2].n128_u64[1] = v59;
          v31[3].n128_u32[0] = *(v7 + 12);
          result = *v94;
          *(v31 + 56) = *v94;
          v31[4].n128_u64[1] = v7[9];
          ++v101;
          goto LABEL_38;
        }

        v58 = [v32 TTCompare:v35];

        if (v58 != -1)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    else
    {

      if (v33 >= v37)
      {
        goto LABEL_33;
      }
    }

    v40 = v31->n128_u64[0];
    v31->n128_u64[0] = 0;
    v31[2].n128_u64[1] = v40;
    v31[3].n128_u32[0] = v31->n128_u32[2];
    *(v31 + 56) = *v38;
    v31[4].n128_u64[1] = v31[2].n128_u64[0];
    ++v101;
    v41 = v4;
    v42 = v99;
    if (v31 == v4)
    {
      goto LABEL_37;
    }

    v91 = v31 + 1;
    v92 = v30;
    v43 = v30;
    while (1)
    {
      v44 = v4 + v43;
      v45 = *v42;
      v46 = *(v7 + 12);
      v47 = v7[7];
      v48 = *(&v4[-2] + v43 - 8);
      v49 = v48;
      v50 = (v4 + v43 - 24);
      v51 = v50->n128_u64[0];
      if (v47 != v50->n128_u64[0])
      {

        v52 = v47 >= v51;
        v4 = a4;
        if (v52)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v53 = *(v44 - 8);
      if (v46 < v53)
      {

        v4 = a4;
        goto LABEL_28;
      }

      v4 = a4;
      if (v46 != v53)
      {

LABEL_34:
        v41 = (v4 + v43);
        goto LABEL_35;
      }

      v54 = [v45 TTCompare:v48];

      if (v54 != -1)
      {
        break;
      }

LABEL_28:
      v31 = (v31 - 40);
      v55 = *(v44 - 5);
      *(v44 - 5) = 0;
      v56 = (v4 + v43);
      v57 = *(v4->n128_u64 + v43);
      *(v4->n128_u64 + v43) = v55;

      v56->n128_u32[2] = *(v44 - 8);
      v56[1] = *v50;
      v56[2].n128_u64[0] = *(v44 - 1);
      v43 -= 40;
      v42 = v99;
      if (!v43)
      {
        v41 = v4;
        v30 = v92;
        goto LABEL_36;
      }
    }

    v41 = v31;
LABEL_35:
    v30 = v92;
    v42 = v99;
LABEL_36:
    v38 = v91;
LABEL_37:
    v60 = *v42;
    *v42 = 0;
    v61 = v41->n128_u64[0];
    v41->n128_u64[0] = v60;

    v41->n128_u32[2] = *(v7 + 12);
    result = *v94;
    v41[1] = *v94;
    v41[2].n128_u64[0] = v7[9];
LABEL_38:
    v31 = (v38 + 24);
    v29 = v42 + 5;
    v30 += 40;
    v7 = v42;
  }

  while (v42 + 5 != a2);
  return result;
}

void sub_19A1BF26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::unique_ptr<std::pair<minIdPathData,TopoSubstring *>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  v120 = a2;
  v121 = a1;
  v109 = a5;
  if (!a5)
  {
    return;
  }

  v8 = a1;
  v9 = a2;
  v10 = a2;
  v118 = a1;
  do
  {
    if (v109 <= a7 || a4 <= a7)
    {
      v52 = a6;
      v122 = a6;
      v123 = &v124;
      v124 = 0;
      if (a4 > v109)
      {
        if (v10 != a3)
        {
          v53 = 0;
          v54 = 0;
          do
          {
            v55 = &a6[v53 / 8];
            v56 = (v10 + v53);
            v57 = *(v10 + v53);
            *v56 = 0;
            *v55 = v57;
            *(v55 + 2) = *(v10 + v53 + 8);
            *(v55 + 1) = *(v10 + v53 + 16);
            v55[4] = *(v10 + v53 + 32);
            ++v54;
            v53 += 40;
          }

          while (v56 + 5 != a3);
          v124 = v54;
          v58 = &a6[v53 / 8];
          v59 = a3 - 40;
          v60 = a3;
          v111 = &a6[v53 / 8];
          do
          {
            if (v10 == v8)
            {
              std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::reverse_iterator<std::pair<minIdPathData,TopoSubstring *> *>,std::reverse_iterator<std::pair<minIdPathData,TopoSubstring *> *>,std::reverse_iterator<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>,0>(v111, v58, v52, a3, v60, v125);
              break;
            }

            v113 = v58 - 40;
            v117 = v60;
            v61 = *(v58 - 40);
            v63 = v10 - 40;
            v62 = *(v10 - 40);
            v119 = v58;
            v64 = v10;
            v67 = *(v58 - 24);
            v65 = (v58 - 24);
            v66 = v67;
            v68 = *(v65 - 2);
            v69 = v62;
            v70 = v64;
            v73 = *(v64 - 24);
            v72 = (v64 - 24);
            v71 = v73;
            if (v66 == v73)
            {
              v74 = *(v72 - 2);
              if (v68 < v74)
              {

                goto LABEL_69;
              }

              v10 = v70;
              if (v68 != v74)
              {

LABEL_73:
                v72 = v65;
                v70 = v119;
                v58 = v113;
                goto LABEL_74;
              }

              v75 = v61;
              v76 = v69;
              v77 = [v61 TTCompare:v69];

              if (v77 != -1)
              {
                goto LABEL_73;
              }
            }

            else
            {

              v45 = v66 >= v71;
              v10 = v70;
              if (v45)
              {
                goto LABEL_73;
              }
            }

            v70 = v10;
LABEL_69:
            v10 = v63;
            v58 = v119;
LABEL_74:
            v78 = *(v70 - 40);
            *(v70 - 40) = 0;
            v79 = *v59;
            *v59 = v78;

            *(v59 + 8) = *(v70 - 32);
            *(v59 + 16) = *v72;
            *(v59 + 32) = *(v70 - 8);
            v60 = v117 - 40;
            v59 -= 40;
            v52 = a6;
          }

          while (v58 != a6);
        }

LABEL_96:
        if (v52 && *v123)
        {
          v103 = 0;
          do
          {
            v104 = *v52;
            v52 += 5;

            ++v103;
          }

          while (v103 < *v123);
        }

        return;
      }

      v80 = a3;
      if (v8 == v10)
      {
        goto LABEL_96;
      }

      v81 = 0;
      v82 = a6;
      v83 = v8;
      do
      {
        v84 = *v83;
        *v83 = 0;
        *v82 = v84;
        *(v82 + 2) = *(v83 + 8);
        *(v82 + 1) = *(v83 + 16);
        v82[4] = *(v83 + 32);
        ++v81;
        v83 += 40;
        v82 += 5;
      }

      while (v83 != v10);
      v124 = v81;
      v85 = a6;
      while (1)
      {
        if (v10 == v80)
        {
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<minIdPathData,TopoSubstring *> *,std::pair<minIdPathData,TopoSubstring *> *,std::pair<minIdPathData,TopoSubstring *> *>(v125, v85, v82, v8);
          v52 = v122;
          goto LABEL_96;
        }

        v86 = *v10;
        v114 = v10;
        v89 = *(v10 + 16);
        v88 = (v10 + 16);
        v87 = v89;
        v90 = *(v88 - 2);
        v91 = *v85;
        v92 = v91;
        v93 = v85[2];
        if (v89 == v93)
        {
          v94 = v86;
          v95 = *(v85 + 2);
          v96 = v90 == v95;
          if (v90 >= v95)
          {
            v52 = a6;
            v99 = v94;
            if (!v96)
            {

LABEL_90:
              v101 = *v85;
              *v85 = 0;
              v102 = *v8;
              *v8 = v101;

              *(v8 + 8) = *(v85 + 2);
              *(v8 + 16) = *(v85 + 1);
              *(v8 + 32) = v85[4];
              v85 += 5;
              v10 = v114;
              goto LABEL_91;
            }

            v100 = [v94 TTCompare:v91];

            if (v100 != -1)
            {
              goto LABEL_90;
            }
          }

          else
          {

            v52 = a6;
          }
        }

        else
        {

          v52 = a6;
          if (v87 >= v93)
          {
            goto LABEL_90;
          }
        }

        v97 = *v114;
        *v114 = 0;
        v98 = *v8;
        *v8 = v97;

        *(v8 + 8) = *(v114 + 8);
        *(v8 + 16) = *v88;
        *(v8 + 32) = *(v114 + 32);
        v10 = v114 + 40;
LABEL_91:
        v8 += 40;
        v80 = a3;
        if (v82 == v85)
        {
          goto LABEL_96;
        }
      }
    }

    if (!a4)
    {
      return;
    }

    v11 = (v8 + 40);
    while (1)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      v15 = v11[-3].n128_u64[1];
      v16 = v15;
      v17 = v11[-2].n128_u64[1];
      if (v14 != v17)
      {

        if (v14 < v17)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v18 = v11[-2].n128_u32[0];
      if (v13 < v18)
      {
        break;
      }

      if (v13 == v18)
      {
        v19 = [v12 TTCompare:v15];

        if (v19 == -1)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

LABEL_14:
      v121 = v11;
      v11 = (v11 + 40);
      v8 += 40;
      v118 = v8;
      if (!--a4)
      {
        return;
      }
    }

LABEL_17:
    v20 = v109;
    v112 = v10;
    if (a4 >= v109)
    {
      if (a4 == 1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(&v121, &v120);
        return;
      }

      v33 = a4 / 2;
      v9 = (v8 + 40 * (a4 / 2));
      if (a3 == v10)
      {
        v36 = a3;
        goto LABEL_49;
      }

      v105 = v8;
      v110 = v8 + 40 * (a4 / 2);
      v35 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v10) >> 3);
      v36 = v10;
      while (2)
      {
        v37 = v35 >> 1;
        v116 = v36;
        v38 = v36 + 40 * (v35 >> 1);
        v39 = *v38;
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
        v42 = *v110;
        v43 = v42;
        v44 = *(v110 + 16);
        if (v41 == v44)
        {
          v46 = *(v110 + 8);
          if (v40 < v46)
          {

            v10 = v112;
            goto LABEL_41;
          }

          v10 = v112;
          if (v40 == v46)
          {
            v47 = [v39 TTCompare:v42];

            v36 = v116;
            if (v47 == -1)
            {
LABEL_41:
              v36 = v38 + 40;
              v37 = v35 + ~v37;
            }
          }

          else
          {

            v36 = v116;
          }
        }

        else
        {

          v45 = v41 >= v44;
          v10 = v112;
          v36 = v116;
          if (!v45)
          {
            goto LABEL_41;
          }
        }

        v35 = v37;
        if (!v37)
        {
          v20 = v109;
          v9 = v110;
          v33 = a4 / 2;
          v8 = v105;
LABEL_49:
          v21 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - v10) >> 3);
          v34 = v10;
          v10 = v36;
          goto LABEL_50;
        }

        continue;
      }
    }

    v21 = v109 / 2;
    v115 = v9 + 40 * (v109 / 2);
    if (v9 == v118)
    {
      goto LABEL_31;
    }

    v22 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v118) >> 3);
    while (2)
    {
      v23 = v22 >> 1;
      v24 = v118 + 40 * (v22 >> 1);
      v25 = *v115;
      v26 = *(v115 + 2);
      v27 = *(v115 + 2);
      v28 = *v24;
      v29 = v28;
      v30 = *(v24 + 2);
      if (v27 == v30)
      {
        v31 = *(v24 + 2);
        if (v26 < v31)
        {

          goto LABEL_29;
        }

        if (v26 == v31)
        {
          v32 = [v25 TTCompare:v28];

          if (v32 == -1)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

LABEL_28:
        v118 = (v24 + 40);
        v23 = v22 + ~v23;
        goto LABEL_29;
      }

      if (v27 >= v30)
      {
        goto LABEL_28;
      }

LABEL_29:
      v22 = v23;
      if (v23)
      {
        continue;
      }

      break;
    }

    v9 = v118;
    v21 = v109 / 2;
    v10 = v112;
    v20 = v109;
LABEL_31:
    v33 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3);
    v34 = v10;
    v118 = v8;
    v10 = v115;
LABEL_50:
    v48 = v10;
    if (v9 != v34)
    {
      v48 = v9;
      if (v10 != v34)
      {
        v49 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v9, v34, v10);
        v20 = v109;
        v48 = v49;
      }
    }

    v50 = a4 - v33;
    v51 = v20 - v21;
    if (v33 + v21 >= v20 - (v33 + v21) + a4)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v48, v10, a3, a4 - v33, v20 - v21, a6, a7);
      v10 = v9;
      v51 = v21;
      v50 = v33;
      a3 = v48;
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,minIdPath(TopoSubstring *)::$_0 &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(v8, v9, v48, v33, v21, a6, a7);
      v121 = v48;
      v8 = v48;
      v118 = v48;
      v9 = v10;
    }

    v120 = v10;
    a4 = v50;
    v109 = v51;
  }

  while (v51);
}

void sub_19A1BFA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::unique_ptr<std::pair<minIdPathData,TopoSubstring *>,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::pair<minIdPathData,TopoSubstring *>,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (*v3)
    {
      v4 = 0;
      do
      {
        v5 = *v2;
        v2 += 5;

        ++v4;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<minIdPathData,TopoSubstring *> *,std::pair<minIdPathData,TopoSubstring *> *,std::pair<minIdPathData,TopoSubstring *> *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;

      *(a4 + 8) = *(v5 + 2);
      *(a4 + 16) = *(v5 + 1);
      *(a4 + 32) = v5[4];
      v5 += 5;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::reverse_iterator<std::pair<minIdPathData,TopoSubstring *> *>,std::reverse_iterator<std::pair<minIdPathData,TopoSubstring *> *>,std::reverse_iterator<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>,0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v6 = a5;
  v8 = a2;
  if (a2 != a3)
  {
    v12 = a5 - 40;
    do
    {
      v13 = *(v8 - 40);
      v8 -= 40;
      *v8 = 0;
      v14 = *v12;
      *v12 = v13;

      *(v12 + 8) = *(v8 + 8);
      *(v12 + 16) = *(v8 + 16);
      *(v12 + 32) = *(v8 + 32);
      v6 -= 40;
      v12 -= 40;
    }

    while (v8 != a3);
    v8 = a3;
  }

  *a6 = a1;
  a6[1] = v8;
  a6[2] = a4;
  a6[3] = v6;
}

char *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *>>(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(&v11, &v10);
    v5 = &v11[2].n128_i8[8];
    v6 = v10 + 40;
    v10 = v6;
    v11 = (v11 + 40);
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &,std::__wrap_iter<std::pair<minIdPathData,TopoSubstring *> *> &>(&v11, &v10);
        v7 = &v11[2].n128_i8[8];
        v8 = v10 + 40;
        v10 = v8;
        v11 = (v11 + 40);
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

void *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned int>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned int>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned int>>>::__emplace_unique_key_args<TopoSubstring *,std::piecewise_construct_t const&,std::tuple<TopoSubstring * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::deque<TopoSubstring *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<TopoSubstring *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<TopoSubstring *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TopoSubstring **>::emplace_back<TopoSubstring **&>(a1, &v10);
}

void sub_19A1C017C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<TopoSubstring **>::emplace_back<TopoSubstring **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<TopoSubstring **>::emplace_front<TopoSubstring **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<TopoSubstring **>::emplace_back<TopoSubstring **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<TopoSubstring **>::emplace_front<TopoSubstring **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TopoSubstring **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__emplace_unique_key_args<TopoSubstring *,TopoSubstring * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::deque<TopoSubstring *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::vector<TopoIDRange>::__emplace_back_slow_path<TopoIDRange const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TopoIDRange>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *&v16 = v7 + 24;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TopoIDRange>,TopoIDRange*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<TopoIDRange>::~__split_buffer(&v14);
  return v13;
}

void sub_19A1C0A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TopoIDRange>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TopoIDRange>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TopoIDRange>,TopoIDRange*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *a4 = v7;
      *(a4 + 8) = *(v6 + 2);
      *(a4 + 16) = *(v6 + 4);
      v6 += 3;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = *v5;
      v5 += 3;
    }
  }
}

uint64_t std::__split_buffer<TopoIDRange>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring * const*,TopoSubstring * const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TopoSubstring *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void std::vector<TopoSubstring *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CRDT::Document_DocObject *>>(a1, a2);
  }

  std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_19A1C0DA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_NSRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, a2);
  }

  std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id std::vector<std::pair<TopoID,TopoID>>::__construct_one_at_end[abi:ne200100]<std::pair<TopoID,TopoID> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(v4 + 16) = result;
  *(v4 + 24) = *(a2 + 24);
  *(a1 + 8) = v4 + 32;
  return result;
}

uint64_t std::vector<std::pair<TopoID,TopoID>>::__emplace_back_slow_path<std::pair<TopoID,TopoID> const&>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  *&v17 = v8 + 32;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(&v15);
  return v14;
}

void sub_19A1C0FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      *(a4 + 8) = *(v4 + 2);
      v6 = v4[2];
      v4[2] = 0;
      *(a4 + 16) = v6;
      *(a4 + 24) = *(v4 + 6);
      v4 += 4;
      a4 += 32;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*,std::pair<TopoID,TopoID>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*,std::pair<TopoID,TopoID>*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::reverse_iterator<std::pair<TopoID,TopoID>*>,std::reverse_iterator<std::pair<TopoID,TopoID>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::reverse_iterator<std::pair<TopoID,TopoID>*>,std::reverse_iterator<std::pair<TopoID,TopoID>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 32);
      v6 -= 32;
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<TopoID,TopoID>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<TopoID,TopoID>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a2->n128_u64[0] < *a3)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a2->n128_u64[0] < *a3)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a4 < *a5)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a3 < *a4)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a2->n128_u64[0] < *a3)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (*a1 < v7)
      {
        if (v7 >= v8)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*(a1 + 16) >= v4->n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v7 >= v8)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*a1 < *(a1 + 16))
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[TTMergeableString deleteSubstrings:withCharacterRanges:]::$_1 &,_NSRange *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (*a1 >= v17)
    {
      if (v17 < v19)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v21 < v6->n128_u64[0])
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v17 >= v19)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (*(a1 + 16) >= v19)
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v18->n128_u64[0] >= v20->n128_u64[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v6->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*a1 >= v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (*a1 >= v14)
  {
    if (v14 < v12)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v15 < v13->n128_u64[0])
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v14 >= v12)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (*(a1 + 16) >= v12)
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u64[0];
    v35 = v30->n128_u64[0];
    if (v34 < v30->n128_u64[0])
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v37 >= v35)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

void *std::vector<TopoSubstring *>::__assign_with_size[abi:ne200100]<TopoSubstring **,TopoSubstring **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TopoSubstring *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::__split_buffer<TopoSubstring *>::emplace_back<TopoSubstring * const&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<CRDT::Document_DocObject *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::vector<TopoIDRange>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_19A1C2940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__emplace_unique_key_args<TopoID,TopoID const&>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_19A1C2C28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::__erase_unique<TopoID>(void *a1, void *a2)
{
  result = std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(a1, a2);
  if (result)
  {
    std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

uint64_t *std::__hash_table<TopoID,std::hash<TopoID>,std::equal_to<TopoID>,std::allocator<TopoID>>::find<TopoID>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5 ^ v4;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v7)
    {
      if (*(i + 6) == *(a2 + 2) && ([i[2] isEqual:*a2] & 1) != 0)
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_19A1C3028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<TopoID,TopoSubstring *>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,TopoSubstring *>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,TopoSubstring *>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_19A1C32C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::__erase_unique<TopoSubstring *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<TopoSubstring *,unsigned long>,std::__unordered_map_hasher<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,true>,std::__unordered_map_equal<TopoSubstring *,std::__hash_value_type<TopoSubstring *,unsigned long>,std::equal_to<TopoSubstring *>,std::hash<TopoSubstring *>,true>,std::allocator<std::__hash_value_type<TopoSubstring *,unsigned long>>>::find<TopoSubstring *>(a1, a2);
  if (result)
  {
    std::__hash_table<TopoSubstring *,std::hash<TopoSubstring *>,std::equal_to<TopoSubstring *>,std::allocator<TopoSubstring *>>::erase(a1, result);
    return 1;
  }

  return result;
}

void std::vector<TopoSubstring *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CRDT::Document_DocObject *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::__unordered_map_hasher<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::hash<TopoID>,std::equal_to<TopoID>,true>,std::__unordered_map_equal<TopoID,std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>,std::equal_to<TopoID>,std::hash<TopoID>,true>,std::allocator<std::__hash_value_type<TopoID,std::pair<TopoSubstring *,TopoSubstring *>>>>::__emplace_unique_key_args<TopoID,std::piecewise_construct_t const&,std::tuple<TopoID const&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = *(a2 + 2);
  v5 = [*a2 hash];
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 6) != *(a2 + 2) || ([v12[2] isEqual:*a2] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_19A1C36B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<TopoID,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TopoID,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_19A1C39EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A1C3B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A1C404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19A1C4BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  topotext::Selection::~Selection(&a9);

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TopoID,TopoID>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<TopoID,TopoID>>::__emplace_back_slow_path<std::pair<TopoID,TopoID>>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    *(v3 + 8) = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(v3 + 16) = v5;
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_19A1C56B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1C5794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<TopoID,TopoID>>::__emplace_back_slow_path<std::pair<TopoID,TopoID>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    std::vector<CRDT::Document_DocObject *>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>>(a1, v6);
  }

  v9 = 32 * v5;
  v16 = 0;
  v17 = 32 * v5;
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 2);
  v11 = a2[2];
  a2[2] = 0;
  *(v9 + 16) = v11;
  *(v9 + 24) = *(a2 + 6);
  v18 = (32 * v5 + 32);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TopoID,TopoID>>,std::pair<TopoID,TopoID>*>(a1, v3, v4, 0);
  v12 = *a1;
  *a1 = 0;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(&v16);
  return v15;
}

void sub_19A1C5938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<TopoID,TopoID>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<TopoID,TopoID>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TopoID,TopoID>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<TopoID,TopoID>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {

    v5 = *(i - 32);
  }

  *(a1 + 8) = a2;
}

void sub_19A1C60F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  versioned_document::Version::~Version(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<versioned_document::Version>::DeleteSubrange(google::protobuf::internal::RepeatedPtrFieldBase *a1, int a2, int a3)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 1134);
    v6 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v6);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 1135);
  v7 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v12, v7);
  google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
LABEL_6:
  if (a3 + a2 > *(a1 + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 1136);
    v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (start + num) <= (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  if (a3 >= 1)
  {
    v9 = a2;
    v10 = a3;
    do
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(a1, v9);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      ++v9;
      --v10;
    }

    while (v10);
  }

  google::protobuf::RepeatedPtrField<versioned_document::Version>::ExtractSubrange(a1, a2, a3, 0);
}

void sub_19A1C62A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1C65A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_19A1C6834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1C6AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New()
{
  operator new();
}

{
  operator new();
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = versioned_document::Version::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = versioned_document::Version::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_19A1C6CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 894);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 895);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1C6D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<versioned_document::Version>::ExtractSubrange(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2, int a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 1145);
    v8 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (start) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v8);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 1146);
  v9 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (num) >= (0): ");
  google::protobuf::internal::LogFinisher::operator=(&v13, v9);
  google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
LABEL_6:
  if (a3 + a2 > *(this + 2))
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 1147);
    v10 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (start + num) <= (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v10);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  if (a3 >= 1)
  {
    if (a4)
    {
      v11 = a3;
      v12 = a2;
      do
      {
        *a4++ = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this, v12++);
        --v11;
      }

      while (v11);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(this, a2, a3);
  }
}

void sub_19A1C6F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(uint64_t this, int a2, int a3)
{
  v3 = *(this + 12);
  if (a3 + a2 < v3)
  {
    v4 = 8 * a2;
    v5 = a3 + a2;
    do
    {
      *(*this + v4) = *(*this + v4 + 8 * a3);
      ++v5;
      v4 += 8;
    }

    while (v5 < v3);
  }

  *(this + 8) -= a3;
  *(this + 12) = v3 - a3;
  return this;
}

void OUTLINED_FUNCTION_0_14(float a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 8) = 1024;
  *(a3 + 10) = v4;
}

void sub_19A1C70CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_19A1C739C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  topotext::VectorTimestamp::~VectorTimestamp(&a9);

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1C7A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_19A1C7B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock>::New()
{
  operator new();
}

{
  operator new();
}