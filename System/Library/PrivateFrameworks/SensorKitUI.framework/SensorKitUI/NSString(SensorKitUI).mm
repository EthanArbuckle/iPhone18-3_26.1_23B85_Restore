@interface NSString(SensorKitUI)
+ (uint64_t)srui_localizedStringForCode:()SensorKitUI;
- (NSComparisonResult)sr_localizedServiceCompare:()SensorKitUI;
@end

@implementation NSString(SensorKitUI)

- (NSComparisonResult)sr_localizedServiceCompare:()SensorKitUI
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSString *)[[SRAuthorizationGroup authorizationGroupWithServiceName:?]] localizedStandardCompare:[[SRAuthorizationGroup authorizationGroupWithServiceName:?]]];
  objc_autoreleasePoolPop(v5);
  return v6;
}

+ (uint64_t)srui_localizedStringForCode:()SensorKitUI
{
  v107 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 1:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = *MEMORY[0x277D85DE8];
      v5 = @"allowAccess";
      v6 = @"Allow Collection & Sharing";
      goto LABEL_103;
    case 2:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v54 = *MEMORY[0x277D85DE8];
      v5 = @"dontAllowAccess";
      v6 = @"Don’t Allow Collection & Sharing";
      goto LABEL_103;
    case 3:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v49 = *MEMORY[0x277D85DE8];
      v5 = @"deleted";
      v6 = @"Deleted";
      goto LABEL_103;
    case 4:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v52 = *MEMORY[0x277D85DE8];
      v5 = @"released";
      v6 = @"Shared";
      goto LABEL_103;
    case 5:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v41 = *MEMORY[0x277D85DE8];
      v5 = @"arrayIndex";
      v6 = @"Item %ld";
      goto LABEL_103;
    case 6:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v63 = *MEMORY[0x277D85DE8];
      v5 = @"collectedTitle";
      v6 = @"What is collected:";
      goto LABEL_103;
    case 7:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v68 = *MEMORY[0x277D85DE8];
      v5 = @"notCollectedTitle";
      v6 = @"What is not collected:";
      goto LABEL_103;
    case 8:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v53 = *MEMORY[0x277D85DE8];
      v5 = @"sampleDataTitle";
      v6 = @"Example data sample";
      goto LABEL_103;
    case 9:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v71 = *MEMORY[0x277D85DE8];
      v5 = @"ExampleDataClarification";
      v6 = @"Example represents a single data point.";
      goto LABEL_103;
    case 10:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v46 = *MEMORY[0x277D85DE8];
      v5 = @"appsAndStudies";
      v6 = @"apps and studies with access";
      goto LABEL_103;
    case 11:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v70 = *MEMORY[0x277D85DE8];
      v5 = @"collectedData";
      v6 = @"Collected Data";
      goto LABEL_103;
    case 12:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v38 = *MEMORY[0x277D85DE8];
      v5 = @"dataSources";
      v6 = @"Data Sources";
      goto LABEL_103;
    case 13:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v45 = *MEMORY[0x277D85DE8];
      v5 = @"appsAndStudiesFooter";
      v6 = @"These apps and studies have access to all shared data from this data source. You can always revoke access.";
      goto LABEL_103;
    case 14:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v67 = *MEMORY[0x277D85DE8];
      v5 = @"appsAndStudiesFooterIfListEmpty";
      v6 = @"Currently, no Sensor & Usage Data is being collected. No app or study has access to Research Sensor & Usage Data.";
      goto LABEL_103;
    case 15:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v33 = *MEMORY[0x277D85DE8];
      v5 = @"appsWritingDataFooter";
      v6 = @"These apps can contribute %@ that can then be shared with research apps and studies you approve.";
      goto LABEL_103;
    case 16:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v50 = *MEMORY[0x277D85DE8];
      v5 = @"deleteAllFooter";
      v6 = @"This deletes any data that has been collected and is currently stored on your device. This does not delete data you’ve shared with an app or study.";
      goto LABEL_103;
    case 17:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v30 = *MEMORY[0x277D85DE8];
      v5 = @"downloadAllFooter";
      v6 = @"Once data has been shared to authorized studies it cannot be retrieved or deleted. Data that is more than 7 days old is deleted from your devices.";
      goto LABEL_103;
    case 18:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v57 = *MEMORY[0x277D85DE8];
      v5 = @"sharedDaysFooter";
      v6 = @"Once data has been released to authorized apps it cannot be un-shared or deleted.";
      goto LABEL_103;
    case 19:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v69 = *MEMORY[0x277D85DE8];
      v5 = @"sharedDays";
      v6 = @"All Shared Days";
      goto LABEL_103;
    case 20:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v79 = *MEMORY[0x277D85DE8];
      v5 = @"deleteUnreleased";
      v6 = @"Delete Unshared Data";
      goto LABEL_103;
    case 21:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v61 = *MEMORY[0x277D85DE8];
      v5 = @"downloadAllTitle";
      v6 = @"Export All Currently Collected Data";
      goto LABEL_103;
    case 22:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v66 = *MEMORY[0x277D85DE8];
      v5 = @"deleteAllAlertTitle";
      v6 = @"Please confirm that you want to delete all collected data.";
      goto LABEL_103;
    case 23:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v76 = *MEMORY[0x277D85DE8];
      v5 = @"deleteAllUnreleasedAlertTitle";
      v6 = @"Please confirm that you want to delete all unshared data.";
      goto LABEL_103;
    case 24:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v83 = *MEMORY[0x277D85DE8];
      v5 = @"deleteAllAlertActionButton";
      v6 = @"Delete All Collected Data";
      goto LABEL_103;
    case 25:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v48 = *MEMORY[0x277D85DE8];
      v5 = @"deleteAllUnreleasedAlertActionButton";
      v6 = @"Delete All Unshared Data";
      goto LABEL_103;
    case 26:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v47 = *MEMORY[0x277D85DE8];
      v5 = @"cancel";
      v6 = @"Cancel";
      goto LABEL_103;
    case 27:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v87 = *MEMORY[0x277D85DE8];
      v5 = @"exportResearchData";
      v6 = @"Exporting Sensor & Usage Data";
      goto LABEL_103;
    case 28:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v28 = *MEMORY[0x277D85DE8];
      v5 = @"preparing";
      v6 = @"This may take some time.";
      goto LABEL_103;
    case 29:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v84 = *MEMORY[0x277D85DE8];
      v5 = @"exportError";
      v6 = @"Could not export data.";
      goto LABEL_103;
    case 30:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v85 = *MEMORY[0x277D85DE8];
      v5 = @"OK";
      v6 = @"OK";
      goto LABEL_103;
    case 31:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v72 = *MEMORY[0x277D85DE8];
      v5 = @"studyPurpose";
      v6 = @"Study Purpose";
      goto LABEL_103;
    case 32:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v56 = *MEMORY[0x277D85DE8];
      v5 = @"contributeHeader";
      v6 = @"Data this app can contribute";
      goto LABEL_103;
    case 33:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v73 = *MEMORY[0x277D85DE8];
      v5 = @"researchDataForStudy";
      v6 = @"Sensor & Usage Data for study";
      goto LABEL_103;
    case 34:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v34 = *MEMORY[0x277D85DE8];
      v5 = @"viewAppPrivacyPolicy";
      v6 = @"View App Privacy Policy";
      goto LABEL_103;
    case 35:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v29 = *MEMORY[0x277D85DE8];
      v5 = @"viewStudyPrivacyPolicy";
      v6 = @"View Study Privacy Policy";
      goto LABEL_103;
    case 36:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v25 = *MEMORY[0x277D85DE8];
      v5 = @"appUsageTitle";
      v6 = @"How the study will use this data:";
      goto LABEL_103;
    case 37:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v26 = *MEMORY[0x277D85DE8];
      v5 = @"requiredAuthStudyAlertTitle";
      v6 = @"%@ Is Required For this Study.";
      goto LABEL_103;
    case 38:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v20 = *MEMORY[0x277D85DE8];
      v5 = @"requiredAuthAppAlertTitle";
      v6 = @"%@ Requires %@ For Their Study.";
      goto LABEL_103;
    case 39:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v86 = *MEMORY[0x277D85DE8];
      v5 = @"dontEnrollInStudy";
      v6 = @"Don’t Enroll in Study";
      goto LABEL_103;
    case 40:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v78 = *MEMORY[0x277D85DE8];
      v5 = @"change";
      v6 = @"Change Choice";
      goto LABEL_103;
    case 41:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v42 = *MEMORY[0x277D85DE8];
      v5 = @"turnOff";
      v6 = @"Turn Off";
      goto LABEL_103;
    case 42:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v59 = *MEMORY[0x277D85DE8];
      v5 = @"platformPhone";
      v6 = @"iPhone";
      goto LABEL_103;
    case 43:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v81 = *MEMORY[0x277D85DE8];
      v5 = @"platformWatch";
      v6 = @"Apple Watch";
      goto LABEL_103;
    case 44:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v16 = *MEMORY[0x277D85DE8];
      v5 = @"platformAddJointCharacter";
      v6 = @" & ";
      goto LABEL_103;
    case 45:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v32 = *MEMORY[0x277D85DE8];
      v5 = @"platformOnlyFormatter";
      v6 = @"%@ Only";
      goto LABEL_103;
    case 46:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v74 = *MEMORY[0x277D85DE8];
      v5 = @"authProgressFormatter";
      v6 = @"%d of %lu";
      goto LABEL_103;
    case 47:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v92 = *MEMORY[0x277D85DE8];
      v5 = @"back";
      v6 = @"Back";
      goto LABEL_103;
    case 48:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v22 = *MEMORY[0x277D85DE8];
      v5 = @"authConfirmationTitle";
      v6 = @"Authorization Review";
      goto LABEL_103;
    case 49:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v35 = *MEMORY[0x277D85DE8];
      v5 = @"authConfirmationListTitle";
      v6 = @"You’ve given “%@” access to:";
      goto LABEL_103;
    case 50:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v40 = *MEMORY[0x277D85DE8];
      v5 = @"authConfirmationDeniedListTitle";
      v6 = @"You’ve denied “%@” access to:";
      goto LABEL_103;
    case 51:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v14 = *MEMORY[0x277D85DE8];
      v5 = @"authConfirmationDetailTitle";
      v6 = @"Data Collection and Access";
      goto LABEL_103;
    case 52:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v96 = *MEMORY[0x277D85DE8];
      v5 = @"authConfirmationDetail_app";
      v6 = @"You can turn off access to this data at any time in Privacy settings or by deleting %@.";
      goto LABEL_103;
    case 53:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v91 = *MEMORY[0x277D85DE8];
      v5 = @"authConfirmationDetail_study";
      v6 = @"You can turn off access to this data at any time in Privacy settings or by withdrawing from the %@.";
      goto LABEL_103;
    case 54:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v21 = *MEMORY[0x277D85DE8];
      v5 = @"privacyTitle";
      v6 = @"Sensor & Usage Data and Your Privacy";
      goto LABEL_103;
    case 55:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v88 = *MEMORY[0x277D85DE8];
      v5 = @"turnOnTitle";
      v6 = @"Turn On Sensor & Usage Data?";
      goto LABEL_103;
    case 56:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v90 = *MEMORY[0x277D85DE8];
      v5 = @"privacyDetailText";
      v6 = @"Privacy is a fundamental human right. And it’s critically important when you’re taking part in research. To protect your privacy, the following apply to all studies that use Sensor & Usage data.";
      goto LABEL_103;
    case 57:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v23 = *MEMORY[0x277D85DE8];
      v5 = @"turnOnDetailText";
      v6 = @"Turning on Sensor & Usage Data enables research mode on your devices. This allows iPhone to collect and share data with apps and studies you authorize.";
      goto LABEL_103;
    case 58:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v80 = *MEMORY[0x277D85DE8];
      v5 = @"next";
      v6 = @"Next";
      goto LABEL_103;
    case 59:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v36 = *MEMORY[0x277D85DE8];
      v5 = @"welcomeDetailText";
      v6 = @"This sensitive data can help apps and studies further their research. Your device can collect this data on behalf of apps and studies you authorize while still protecting your privacy.";
      goto LABEL_103;
    case 60:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v82 = *MEMORY[0x277D85DE8];
      v5 = @"privacyBullet1";
      v6 = @"Your data will not be sold.";
      goto LABEL_103;
    case 61:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v43 = *MEMORY[0x277D85DE8];
      v5 = @"privacyBullet2";
      v6 = @"You decide which studies you join and control the data you share.";
      goto LABEL_103;
    case 62:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v62 = *MEMORY[0x277D85DE8];
      v5 = @"privacyBullet3";
      v6 = @"You can stop sharing data at any time.";
      goto LABEL_103;
    case 63:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v65 = *MEMORY[0x277D85DE8];
      v5 = @"privacyBullet4";
      v6 = @"Studies must tell you how your data supports their research.";
      goto LABEL_103;
    case 64:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v51 = *MEMORY[0x277D85DE8];
      v5 = @"firstRunLearnMore";
      v6 = @"Learn more about Sensor & Usage Data and Privacy";
      goto LABEL_103;
    case 65:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v44 = *MEMORY[0x277D85DE8];
      v5 = @"turnOnButtonTitle";
      v6 = @"Turn On";
      goto LABEL_103;
    case 66:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v64 = *MEMORY[0x277D85DE8];
      v5 = @"dontTurnOnButtonTitle";
      v6 = @"Don’t Turn On";
      goto LABEL_103;
    case 67:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v17 = *MEMORY[0x277D85DE8];
      v5 = @"openInSettings";
      v6 = @"Open Settings";
      goto LABEL_103;
    case 68:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v31 = *MEMORY[0x277D85DE8];
      v5 = @"followUpTitle";
      goto LABEL_28;
    case 69:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v98 = *MEMORY[0x277D85DE8];
      v5 = @"followUpInfoText";
      v6 = @"Enabling Sensor & Usage Data allows your device to securely collect sensitive data apps and studies need for research.";
      goto LABEL_103;
    case 70:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v27 = *MEMORY[0x277D85DE8];
      v5 = @"followUpActionLabelTitle";
LABEL_28:
      v6 = @"Enable Sensor & Usage Data";
      goto LABEL_103;
    case 71:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v11 = *MEMORY[0x277D85DE8];
      v5 = @"dataRequestTitle";
      v6 = @"Research Sensor & Usage Data Request";
      goto LABEL_103;
    case 72:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v19 = *MEMORY[0x277D85DE8];
      v5 = @"reviewRequest";
      v6 = @"Review Request";
      goto LABEL_103;
    case 73:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v89 = *MEMORY[0x277D85DE8];
      v5 = @"sensorKitDetail";
      v6 = @"The %@ would like to collect and share Sensor & Usage Data from your devices as part of a study.";
      goto LABEL_103;
    case 74:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v93 = *MEMORY[0x277D85DE8];
      v5 = @"doubleQuoteFormatter";
      v6 = @"“%@”";
      goto LABEL_103;
    case 75:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v95 = *MEMORY[0x277D85DE8];
      v5 = @"learnMoreAboutResearchData";
      v6 = @"Learn more about research data…";
      goto LABEL_103;
    case 76:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v24 = *MEMORY[0x277D85DE8];
      v5 = @"studyUsageDescriptionHeader";
      v6 = @"Study Research Purpose";
      goto LABEL_103;
    case 77:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v60 = *MEMORY[0x277D85DE8];
      v5 = @"appUsageDescriptionHeader";
      v6 = @"App Research Purpose";
      goto LABEL_103;
    case 78:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v12 = *MEMORY[0x277D85DE8];
      v5 = @"requestedDataTitle";
      v6 = @"Requested Data";
      goto LABEL_103;
    case 79:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v97 = *MEMORY[0x277D85DE8];
      v5 = @"aboutSensorKit";
      v6 = @"About Sensor & Usage Data";
      goto LABEL_103;
    case 80:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v10 = *MEMORY[0x277D85DE8];
      v5 = @"enableSKTitle";
      v6 = @"Enable Research Sensor & Usage Data";
      goto LABEL_103;
    case 81:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v18 = *MEMORY[0x277D85DE8];
      v5 = @"enableSKDetailText";
      v6 = @"Your devices are not currently collecting any research data.\n\nIn order to share research data with “%@”, you need to turn on Sensor & Usage Data collection in Settings.";
      goto LABEL_103;
    case 82:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v39 = *MEMORY[0x277D85DE8];
      v5 = @"done";
      v6 = @"Done";
      goto LABEL_103;
    case 83:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v37 = *MEMORY[0x277D85DE8];
      v5 = @"disableSensorKitAlertTitle";
      v6 = @"Data Is Required For this Study";
      goto LABEL_103;
    case 84:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v8 = *MEMORY[0x277D85DE8];
      v5 = @"disableSensorKitAlertTitleMultipleStudies";
      v6 = @"Data Is Required For Your Studies";
      goto LABEL_103;
    case 85:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v7 = *MEMORY[0x277D85DE8];
      v5 = @"disableSensorKitAlertDetail";
      v6 = @"Turning off all data will end your contributions to this study.";
      goto LABEL_103;
    case 86:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v75 = *MEMORY[0x277D85DE8];
      v5 = @"disableSensorKitAlertDetailMultipleStudies";
      v6 = @"Turning off all data will end your contributions to multiple studies.";
      goto LABEL_103;
    case 87:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v77 = *MEMORY[0x277D85DE8];
      v5 = @"continue";
      v6 = @"Continue";
      goto LABEL_103;
    case 88:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v94 = *MEMORY[0x277D85DE8];
      v5 = @"migrationTitle";
      v6 = @"“%@” is Now Using Research and Usage Data";
      goto LABEL_103;
    case 89:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v15 = *MEMORY[0x277D85DE8];
      v5 = @"migrationDetail";
      v6 = @"Your study data can now be managed in the Privacy section of the Settings app.";
      goto LABEL_103;
    case 90:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v104 = *MEMORY[0x277D85DE8];
      v5 = @"whenSharedTitleLabel";
      v6 = @"When is it shared:";
      goto LABEL_103;
    case 91:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v103 = *MEMORY[0x277D85DE8];
      v5 = @"downloadAllFooterFaceMetrics";
      v6 = @"Once data has been shared to authorized studies it cannot be retrieved or deleted. Data that is more than 14 days old is deleted from your devices.";
      goto LABEL_103;
    case 92:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v9 = *MEMORY[0x277D85DE8];
      v5 = @"deleteAllFooterLongTermDatastore";
      v6 = @"Collected data is stored in Motion & Fitness. You can manage this data in Motion & Fitness privacy settings.";
      goto LABEL_103;
    case 93:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v55 = *MEMORY[0x277D85DE8];
      v5 = @"exportAllFooterLongTerm";
      v6 = @"Once data has been shared to authorized studies it cannot be retrieved or deleted.";
      goto LABEL_103;
    case 94:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v13 = *MEMORY[0x277D85DE8];
      v5 = @"whatIsSharedTitleLabel";
      v6 = @"What is shared:";
      goto LABEL_103;
    case 95:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v58 = *MEMORY[0x277D85DE8];
      v5 = @"showMotionFitnessTitleLabel";
      v6 = @"Show Motion & Fitness Privacy";
LABEL_103:

      result = [skui_bundle localizedStringForKey:v5 value:v6 table:0];
      break;
    default:
      if (qword_28001A2D8 != -1)
      {
        dispatch_once(&qword_28001A2D8, &__block_literal_global_1);
      }

      v100 = _MergedGlobals_7;
      if (os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_FAULT))
      {
        v105 = 134349056;
        v106 = a3;
        _os_log_fault_impl(&dword_265602000, v100, OS_LOG_TYPE_FAULT, "Failed to find a localized string for code %{public}ld", &v105, 0xCu);
      }

      v101 = *MEMORY[0x277D85DE8];
      result = 0;
      break;
  }

  return result;
}

@end