@interface SUCoreUpdate
+ (id)_generateStateTable;
- (SUCoreUpdate)initWithDelegate:(id)a3 updateDescriptor:(id)a4 updateUUID:(id)a5 withCallbackQueue:(id)a6;
- (id)copyCurrentState;
- (id)previousRollback;
- (id)rollbackAvailable;
- (id)updateDelegate;
- (int64_t)actionAdvanceBrainLoadSuccess:(id)a3 error:(id *)a4;
- (int64_t)actionAdvanceDownloadPreflighted:(id)a3 error:(id *)a4;
- (int64_t)actionAdvanceSUDownloaded:(id)a3 error:(id *)a4;
- (int64_t)actionAdvanceSuspended:(id)a3 error:(id *)a4;
- (int64_t)actionApplyUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionCancelPrepare:(id)a3 error:(id *)a4;
- (int64_t)actionCheckSpace:(id)a3 error:(id *)a4;
- (int64_t)actionChooseErrorSpaceCheck:(id)a3 error:(id *)a4;
- (int64_t)actionDecideApplyUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionDecideBeginRollback:(id)a3 error:(id *)a4;
- (int64_t)actionDecideCancelBeforeRollback:(id)a3 error:(id *)a4;
- (int64_t)actionDecideDownloadSU:(id)a3 error:(id *)a4;
- (int64_t)actionDecideDownloadSpaceCheck:(id)a3 error:(id *)a4;
- (int64_t)actionDecideLoadBrain:(id)a3 error:(id *)a4;
- (int64_t)actionDecidePreflightDownloadSU:(id)a3 error:(id *)a4;
- (int64_t)actionDecidePrepareUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionDecideResumeUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionDecideRollbackUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionDecideSuspendUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionDownloadSU:(id)a3 error:(id *)a4;
- (int64_t)actionLoadBrain:(id)a3 error:(id *)a4;
- (int64_t)actionLoadBrainRollback:(id)a3 error:(id *)a4;
- (int64_t)actionPreflightDownloadSU:(id)a3 error:(id *)a4;
- (int64_t)actionPrepareUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionRemovePrepared:(id)a3 error:(id *)a4;
- (int64_t)actionRemoveSU:(id)a3 error:(id *)a4;
- (int64_t)actionReportAnomalyAPI:(id)a3 error:(id *)a4;
- (int64_t)actionReportAnomalyAPIEnd:(id)a3 error:(id *)a4;
- (int64_t)actionReportApplied:(id)a3 error:(id *)a4;
- (int64_t)actionReportApplyFailed:(id)a3 error:(id *)a4;
- (int64_t)actionReportApplyProgress:(id)a3 error:(id *)a4;
- (int64_t)actionReportAttemptFailure:(id)a3 error:(id *)a4;
- (int64_t)actionReportBrainLoadProgress:(id)a3 error:(id *)a4;
- (int64_t)actionReportBrainLoadSuccess:(id)a3 error:(id *)a4;
- (int64_t)actionReportCanceled:(id)a3 error:(id *)a4;
- (int64_t)actionReportDownloadPreflighted:(id)a3 error:(id *)a4;
- (int64_t)actionReportDownloadProgress:(id)a3 error:(id *)a4;
- (int64_t)actionReportDownloadStalled:(id)a3 error:(id *)a4;
- (int64_t)actionReportPrepareProgress:(id)a3 error:(id *)a4;
- (int64_t)actionReportPrepared:(id)a3 error:(id *)a4;
- (int64_t)actionReportResumeCurrentFailed:(id)a3 error:(id *)a4;
- (int64_t)actionReportResumeCurrentSuccess:(id)a3 error:(id *)a4;
- (int64_t)actionReportRollbackFailed:(id)a3 error:(id *)a4;
- (int64_t)actionReportRollbackSuccess:(id)a3 error:(id *)a4;
- (int64_t)actionReportSUDownloaded:(id)a3 error:(id *)a4;
- (int64_t)actionResumeCurrentUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionResumeUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionRollbackUpdateApply:(id)a3 error:(id *)a4;
- (int64_t)actionRollbackUpdateDecideApply:(id)a3 error:(id *)a4;
- (int64_t)actionRollbackUpdateDecideResume:(id)a3 error:(id *)a4;
- (int64_t)actionRollbackUpdateDecideSuspend:(id)a3 error:(id *)a4;
- (int64_t)actionRollbackUpdatePrepare:(id)a3 error:(id *)a4;
- (int64_t)actionRollbackUpdateResume:(id)a3 error:(id *)a4;
- (int64_t)actionRollbackUpdateSuspend:(id)a3 error:(id *)a4;
- (int64_t)actionSuspendUpdate:(id)a3 error:(id *)a4;
- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4;
- (int64_t)actionUpdateTarget:(id)a3 error:(id *)a4;
- (int64_t)actionUpdateTargetReconfig:(id)a3 error:(id *)a4;
- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8;
- (void)_adjustTarget:(int64_t)a3 withPolicy:(id)a4;
- (void)_applyAttemptFailed:(id)a3;
- (void)_cleanupAfterAttempt;
- (void)_eventAfterReachingPhase:(int64_t)a3;
- (void)_eventAfterReachingRollbackPhase:(int64_t)a3;
- (void)_rollbackAttemptFailed:(id)a3 withError:(id)a4;
- (void)_trackUpdateAnomaly:(id)a3 result:(int64_t)a4 description:(id)a5;
- (void)_trackUpdateError:(id)a3 forReason:(id)a4 error:(id)a5;
- (void)_updateAnomaly:(id)a3;
- (void)_updateApplied;
- (void)_updateApplyProgress:(id)a3;
- (void)_updateAssetDownloadPreflighted;
- (void)_updateAssetDownloadProgress:(id)a3;
- (void)_updateAssetDownloadStalled:(id)a3;
- (void)_updateAssetDownloaded:(id)a3;
- (void)_updateAttemptFailed:(id)a3;
- (void)_updateBrainLoadProgress:(id)a3;
- (void)_updateBrainLoadStalled:(id)a3;
- (void)_updateBrainLoaded:(id)a3;
- (void)_updateCanceled;
- (void)_updateCurrentResumeFailed:(id)a3;
- (void)_updateCurrentResumed;
- (void)_updatePrepareProgress:(id)a3;
- (void)_updatePrepared:(id)a3;
- (void)_updateRolledBack:(id)a3;
- (void)anomaly:(id)a3;
- (void)cancelCurrentUpdate;
- (void)downloadFailed:(id)a3;
- (void)downloadProgress:(id)a3;
- (void)downloadStalled:(id)a3;
- (void)downloaded:(id)a3;
- (void)msuApplied;
- (void)msuApplyFailed:(id)a3;
- (void)msuApplyProgress:(id)a3;
- (void)msuBrainLoadFailed:(id)a3;
- (void)msuBrainLoadProgress:(id)a3;
- (void)msuBrainLoadStalled:(id)a3;
- (void)msuBrainLoaded:(id)a3;
- (void)msuPrepareFailed:(id)a3;
- (void)msuPrepareProgress:(id)a3;
- (void)msuPrepared:(id)a3;
- (void)msuRemoveFailed:(id)a3;
- (void)msuRemoved;
- (void)msuResumeFailed:(id)a3;
- (void)msuResumed;
- (void)msuRollbackApplyFailed:(id)a3;
- (void)msuRollbackApplySuccess;
- (void)msuRollbackFailed:(id)a3;
- (void)msuRollbackPrepareSuccess;
- (void)msuRollbackResumeSuccess;
- (void)msuRollbackSuspendSuccess;
- (void)msuSUDownloadPreflightFailed:(id)a3;
- (void)msuSUDownloadPreflighted;
- (void)msuSuspendFailed:(id)a3;
- (void)msuSuspended;
- (void)preSUStagingFinished:(id)a3;
- (void)resumeCurrentUpdate;
- (void)targetApplied:(id)a3;
- (void)targetBrainLoaded:(id)a3;
- (void)targetDownloadPreflighted:(id)a3;
- (void)targetDownloaded:(id)a3;
- (void)targetPrepared:(id)a3;
- (void)targetRollback:(id)a3;
- (void)updateRemoveFailed:(id)a3;
- (void)updateRemoved;
@end

@implementation SUCoreUpdate

+ (id)_generateStateTable
{
  v1729[27] = *MEMORY[0x277D85DE8];
  v1728[0] = @"ReadyToBegin";
  v1726[0] = @"TargetBrainLoaded";
  v1724 = *MEMORY[0x277D644B8];
  v2 = v1724;
  v1725 = @"DecideLoadBrain";
  v514 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1725 forKeys:&v1724 count:1];
  v1727[0] = v514;
  v1726[1] = @"TargetDownloadPreflighted";
  v1722 = v2;
  v1723 = @"DecideLoadBrain";
  v513 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1723 forKeys:&v1722 count:1];
  v1727[1] = v513;
  v1726[2] = @"TargetDownloaded";
  v1720 = v2;
  v1721 = @"DecideLoadBrain";
  v512 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1721 forKeys:&v1720 count:1];
  v1727[2] = v512;
  v1726[3] = @"TargetPrepared";
  v1718 = v2;
  v1719 = @"DecideLoadBrain";
  v511 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1719 forKeys:&v1718 count:1];
  v1727[3] = v511;
  v1726[4] = @"TargetApplied";
  v1716 = v2;
  v1717 = @"DecideLoadBrain";
  v510 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1717 forKeys:&v1716 count:1];
  v1727[4] = v510;
  v1726[5] = @"TargetRollback";
  v1714 = v2;
  v1715 = @"DecideBeginRollback";
  v509 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1715 forKeys:&v1714 count:1];
  v1727[5] = v509;
  v1726[6] = @"ResumeCurrentUpdate";
  v1712 = v2;
  v1713 = @"ReportAnomalyAPIEnd";
  v508 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1713 forKeys:&v1712 count:1];
  v1727[6] = v508;
  v1726[7] = @"CancelCurrentUpdate";
  v1710 = v2;
  v1711 = @"ReportCanceled";
  v507 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1711 forKeys:&v1710 count:1];
  v1727[7] = v507;
  v1726[8] = @"PerformLoadBrain";
  v1708[0] = *MEMORY[0x277D64800];
  v3 = v1708[0];
  v1708[1] = v2;
  v1709[0] = @"LoadingBrain";
  v1709[1] = @"LoadBrain";
  v506 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1709 forKeys:v1708 count:2];
  v1727[8] = v506;
  v1726[9] = @"BrainLoadSuccessAtTarget";
  v1706[0] = v3;
  v1706[1] = v2;
  v1707[0] = @"BrainLoaded";
  v1707[1] = @"ReportBrainLoadSuccess";
  v505 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1707 forKeys:v1706 count:2];
  v1727[9] = v505;
  v1726[10] = @"PerformPreflightDownloadSU";
  v1704[0] = v3;
  v1704[1] = v2;
  v1705[0] = @"PreflightingDownloadSU";
  v1705[1] = @"PreflightDownloadSU";
  v504 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1705 forKeys:v1704 count:2];
  v1727[10] = v504;
  v1726[11] = @"PreflightSuccessAtTarget";
  v1702[0] = v3;
  v1702[1] = v2;
  v1703[0] = @"SUDownloadPreflighted";
  v1703[1] = @"ReportDownloadPreflighted";
  v503 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1703 forKeys:v1702 count:2];
  v1727[11] = v503;
  v1726[12] = @"PerformDownloadSpaceCheck";
  v1700[0] = v3;
  v1700[1] = v2;
  v1701[0] = @"CheckingSpaceForInstall";
  v1701[1] = @"CheckSpace";
  v502 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1701 forKeys:v1700 count:2];
  v1727[12] = v502;
  v1726[13] = @"PerformDownloadSU";
  v1698[0] = v3;
  v1698[1] = v2;
  v1699[0] = @"DownloadingSU";
  v1699[1] = @"DownloadSU";
  v501 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1699 forKeys:v1698 count:2];
  v1727[13] = v501;
  v1726[14] = @"DownloadSuccessAtTarget";
  v1696[0] = v3;
  v1696[1] = v2;
  v1697[0] = @"SUDownloaded";
  v1697[1] = @"ReportSUDownloaded";
  v500 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1697 forKeys:v1696 count:2];
  v1727[14] = v500;
  v1726[15] = @"PerformPrepare";
  v1694[0] = v3;
  v1694[1] = v2;
  v1695[0] = @"Preparing";
  v1695[1] = @"PrepareUpdate";
  v499 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1695 forKeys:v1694 count:2];
  v1727[15] = v499;
  v1726[16] = @"PerformSuspend";
  v1692[0] = v3;
  v1692[1] = v2;
  v1693[0] = @"Suspending";
  v1693[1] = @"SuspendUpdate";
  v498 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1693 forKeys:v1692 count:2];
  v1727[16] = v498;
  v1726[17] = @"SuspendSuccessAtTarget";
  v1690[0] = v3;
  v1690[1] = v2;
  v1691[0] = @"Prepared";
  v1691[1] = @"ReportPrepared";
  v497 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1691 forKeys:v1690 count:2];
  v1727[17] = v497;
  v1726[18] = @"PerformResume";
  v1688[0] = v3;
  v1688[1] = v2;
  v1689[0] = @"Resuming";
  v1689[1] = @"ResumeUpdate";
  v496 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1689 forKeys:v1688 count:2];
  v1727[18] = v496;
  v1726[19] = @"ResumeSuccessAtTarget";
  v1686[0] = v3;
  v1686[1] = v2;
  v1687[0] = @"Prepared";
  v1687[1] = @"ReportPrepared";
  v495 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1687 forKeys:v1686 count:2];
  v1727[19] = v495;
  v1726[20] = @"PerformApply";
  v1684[0] = v3;
  v1684[1] = v2;
  v1685[0] = @"Applying";
  v1685[1] = @"ApplyUpdate";
  v494 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1685 forKeys:v1684 count:2];
  v1727[20] = v494;
  v1726[21] = @"ApplySuccess";
  v1682[0] = v3;
  v1682[1] = v2;
  v1683[0] = @"AwaitingReboot";
  v1683[1] = @"ReportApplied";
  v493 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1683 forKeys:v1682 count:2];
  v1727[21] = v493;
  v1726[22] = @"RB_BeginRollback";
  v1680[0] = v3;
  v1680[1] = v2;
  v1681[0] = @"RB_ReadyToBegin";
  v1681[1] = @"LoadBrainRollback";
  v492 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1681 forKeys:v1680 count:2];
  v1727[22] = v492;
  v1726[23] = @"RB_PerformLoadBrain";
  v1678[0] = v3;
  v1678[1] = v2;
  v1679[0] = @"RB_LoadingBrain";
  v1679[1] = @"LoadBrain";
  v491 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1679 forKeys:v1678 count:2];
  v1727[23] = v491;
  v1726[24] = @"RB_PerformRollbackPrepare";
  v1676[0] = v3;
  v1676[1] = v2;
  v1677[0] = @"RB_RollingBackPrepare";
  v1677[1] = @"RollbackUpdatePrepare";
  v490 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1677 forKeys:v1676 count:2];
  v1727[24] = v490;
  v1726[25] = @"RB_PerformRollbackSuspend";
  v1674[0] = v3;
  v1674[1] = v2;
  v1675[0] = @"RB_RollingBackSuspend";
  v1675[1] = @"RollbackUpdateSuspend";
  v489 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1675 forKeys:v1674 count:2];
  v1727[25] = v489;
  v1726[26] = @"RB_PerformRollbackResume";
  v1672[0] = v3;
  v1672[1] = v2;
  v1673[0] = @"RB_RollingBackResume";
  v1673[1] = @"RollbackUpdateResume";
  v488 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1673 forKeys:v1672 count:2];
  v1727[26] = v488;
  v1726[27] = @"RB_PerformRollbackApply";
  v1670[0] = v3;
  v1670[1] = v2;
  v1671[0] = @"RB_RollingBackApply";
  v1671[1] = @"RollbackUpdateApply";
  v487 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1671 forKeys:v1670 count:2];
  v1727[27] = v487;
  v1726[28] = @"RB_RollbackAppleSuccess";
  v1668[0] = v3;
  v1668[1] = v2;
  v1669[0] = @"AwaitingReboot";
  v1669[1] = @"ReportRollbackSucceeded";
  v486 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1669 forKeys:v1668 count:2];
  v1727[28] = v486;
  v485 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1727 forKeys:v1726 count:29];
  v1729[0] = v485;
  v1728[1] = @"LoadingBrain";
  v1666[0] = @"TargetBrainLoaded";
  v1664 = v2;
  v1665 = @"UpdateTarget";
  v484 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1665 forKeys:&v1664 count:1];
  v1667[0] = v484;
  v1666[1] = @"TargetDownloadPreflighted";
  v1662 = v2;
  v1663 = @"UpdateTarget";
  v483 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1663 forKeys:&v1662 count:1];
  v1667[1] = v483;
  v1666[2] = @"TargetDownloaded";
  v1660 = v2;
  v1661 = @"UpdateTarget";
  v482 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1661 forKeys:&v1660 count:1];
  v1667[2] = v482;
  v1666[3] = @"TargetPrepared";
  v1658 = v2;
  v1659 = @"UpdateTarget";
  v481 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1659 forKeys:&v1658 count:1];
  v1667[3] = v481;
  v1666[4] = @"TargetApplied";
  v1656 = v2;
  v1657 = @"UpdateTarget";
  v480 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1657 forKeys:&v1656 count:1];
  v1667[4] = v480;
  v1666[5] = @"TargetRollback";
  v1654 = v3;
  v1655 = @"RB_LoadingBrain";
  v479 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1655 forKeys:&v1654 count:1];
  v1667[5] = v479;
  v1666[6] = @"ResumeCurrentUpdate";
  v1652 = v2;
  v1653 = @"ReportAnomalyAPI";
  v478 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1653 forKeys:&v1652 count:1];
  v1667[6] = v478;
  v1666[7] = @"CancelCurrentUpdate";
  v1650 = v3;
  v1651 = @"Canceling";
  v477 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1651 forKeys:&v1650 count:1];
  v1667[7] = v477;
  v1666[8] = @"BrainLoadProgress";
  v1648 = v2;
  v1649 = @"ReportBrainLoadProgress";
  v476 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1649 forKeys:&v1648 count:1];
  v1667[8] = v476;
  v1666[9] = @"BrainLoadSuccess";
  v1646 = v2;
  v1647 = @"AdvanceBrainLoadSuccess";
  v475 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1647 forKeys:&v1646 count:1];
  v1667[9] = v475;
  v1666[10] = @"BrainLoadFailed";
  v1644 = v2;
  v1645 = @"ChooseErrorSpaceCheck";
  v474 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1645 forKeys:&v1644 count:1];
  v1667[10] = v474;
  v1666[11] = @"BrainLoadSuccessAtTarget";
  v1642 = v3;
  v1643 = @"BrainLoaded";
  v473 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1643 forKeys:&v1642 count:1];
  v1667[11] = v473;
  v1666[12] = @"PerformPreflightDownloadSU";
  v1640[0] = v3;
  v1640[1] = v2;
  v1641[0] = @"PreflightingDownloadSU";
  v1641[1] = @"PreflightDownloadSU";
  v472 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1641 forKeys:v1640 count:2];
  v1667[12] = v472;
  v1666[13] = @"PreflightSuccessAtTarget";
  v1638[0] = v3;
  v1638[1] = v2;
  v1639[0] = @"SUDownloadPreflighted";
  v1639[1] = @"ReportDownloadPreflighted";
  v471 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1639 forKeys:v1638 count:2];
  v1667[13] = v471;
  v1666[14] = @"PerformDownloadSpaceCheck";
  v1636[0] = v3;
  v1636[1] = v2;
  v1637[0] = @"CheckingSpaceForInstall";
  v1637[1] = @"CheckSpace";
  v470 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1637 forKeys:v1636 count:2];
  v1667[14] = v470;
  v1666[15] = @"PerformDownloadSU";
  v1634[0] = v3;
  v1634[1] = v2;
  v1635[0] = @"DownloadingSU";
  v1635[1] = @"DownloadSU";
  v469 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1635 forKeys:v1634 count:2];
  v1667[15] = v469;
  v1666[16] = @"DownloadSuccessAtTarget";
  v1632[0] = v3;
  v1632[1] = v2;
  v1633[0] = @"SUDownloaded";
  v1633[1] = @"ReportSUDownloaded";
  v468 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1633 forKeys:v1632 count:2];
  v1667[16] = v468;
  v1666[17] = @"PerformPrepare";
  v1630[0] = v3;
  v1630[1] = v2;
  v1631[0] = @"Preparing";
  v1631[1] = @"PrepareUpdate";
  v467 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1631 forKeys:v1630 count:2];
  v1667[17] = v467;
  v1666[18] = @"PerformSuspend";
  v1628[0] = v3;
  v1628[1] = v2;
  v1629[0] = @"Suspending";
  v1629[1] = @"SuspendUpdate";
  v466 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1629 forKeys:v1628 count:2];
  v1667[18] = v466;
  v1666[19] = @"SuspendSuccessAtTarget";
  v1626[0] = v3;
  v1626[1] = v2;
  v1627[0] = @"Prepared";
  v1627[1] = @"ReportPrepared";
  v465 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1627 forKeys:v1626 count:2];
  v1667[19] = v465;
  v1666[20] = @"PerformResume";
  v1624[0] = v3;
  v1624[1] = v2;
  v1625[0] = @"Resuming";
  v1625[1] = @"ResumeUpdate";
  v464 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1625 forKeys:v1624 count:2];
  v1667[20] = v464;
  v1666[21] = @"ResumeSuccessAtTarget";
  v1622[0] = v3;
  v1622[1] = v2;
  v1623[0] = @"Prepared";
  v1623[1] = @"ReportPrepared";
  v463 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1623 forKeys:v1622 count:2];
  v1667[21] = v463;
  v1666[22] = @"PerformApply";
  v1620[0] = v3;
  v1620[1] = v2;
  v1621[0] = @"Applying";
  v1621[1] = @"ApplyUpdate";
  v462 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1621 forKeys:v1620 count:2];
  v1667[22] = v462;
  v1666[23] = @"ApplySuccess";
  v1618[0] = v3;
  v1618[1] = v2;
  v1619[0] = @"AwaitingReboot";
  v1619[1] = @"ReportApplied";
  v461 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1619 forKeys:v1618 count:2];
  v1667[23] = v461;
  v1666[24] = @"PerformErrorSpaceCheck";
  v1616[0] = v3;
  v1616[1] = v2;
  v1617[0] = @"CheckingSpaceAfterError";
  v1617[1] = @"CheckSpace";
  v460 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1617 forKeys:v1616 count:2];
  v1667[24] = v460;
  v1666[25] = @"SkipErrorSpaceCheck";
  v1614[0] = v3;
  v1614[1] = v2;
  v1615[0] = @"ReadyToBegin";
  v1615[1] = @"ReportAttemptFailure";
  v459 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1615 forKeys:v1614 count:2];
  v1667[25] = v459;
  v458 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1667 forKeys:v1666 count:26];
  v1729[1] = v458;
  v1728[2] = @"BrainLoaded";
  v1612[0] = @"TargetBrainLoaded";
  v1610 = v2;
  v1611 = @"UpdateTarget";
  v457 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1611 forKeys:&v1610 count:1];
  v1613[0] = v457;
  v1612[1] = @"TargetDownloadPreflighted";
  v1608 = v2;
  v1609 = @"DecidePreflightDownloadSU";
  v456 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1609 forKeys:&v1608 count:1];
  v1613[1] = v456;
  v1612[2] = @"TargetDownloaded";
  v1606 = v2;
  v1607 = @"DecidePreflightDownloadSU";
  v455 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1607 forKeys:&v1606 count:1];
  v1613[2] = v455;
  v1612[3] = @"TargetPrepared";
  v1604 = v2;
  v1605 = @"DecidePreflightDownloadSU";
  v454 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1605 forKeys:&v1604 count:1];
  v1613[3] = v454;
  v1612[4] = @"TargetApplied";
  v1602 = v2;
  v1603 = @"DecidePreflightDownloadSU";
  v453 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1603 forKeys:&v1602 count:1];
  v1613[4] = v453;
  v1612[5] = @"TargetRollback";
  v1600[0] = v3;
  v1600[1] = v2;
  v1601[0] = @"RB_BrainLoaded";
  v1601[1] = @"DecideBeginRollback";
  v452 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1601 forKeys:v1600 count:2];
  v1613[5] = v452;
  v1612[6] = @"ResumeCurrentUpdate";
  v1598 = v2;
  v1599 = @"ReportAnomalyAPIEnd";
  v451 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1599 forKeys:&v1598 count:1];
  v1613[6] = v451;
  v1612[7] = @"CancelCurrentUpdate";
  v1596[0] = v3;
  v1596[1] = v2;
  v1597[0] = @"ReadyToBegin";
  v1597[1] = @"ReportCanceled";
  v450 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1597 forKeys:v1596 count:2];
  v1613[7] = v450;
  v1612[8] = @"PerformPreflightDownloadSU";
  v1594[0] = v3;
  v1594[1] = v2;
  v1595[0] = @"PreflightingDownloadSU";
  v1595[1] = @"PreflightDownloadSU";
  v449 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1595 forKeys:v1594 count:2];
  v1613[8] = v449;
  v1612[9] = @"PreflightSuccessAtTarget";
  v1592[0] = v3;
  v1592[1] = v2;
  v1593[0] = @"SUDownloadPreflighted";
  v1593[1] = @"ReportDownloadPreflighted";
  v448 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1593 forKeys:v1592 count:2];
  v1613[9] = v448;
  v1612[10] = @"PerformDownloadSpaceCheck";
  v1590[0] = v3;
  v1590[1] = v2;
  v1591[0] = @"CheckingSpaceForInstall";
  v1591[1] = @"CheckSpace";
  v447 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1591 forKeys:v1590 count:2];
  v1613[10] = v447;
  v1612[11] = @"PerformDownloadSU";
  v1588[0] = v3;
  v1588[1] = v2;
  v1589[0] = @"DownloadingSU";
  v1589[1] = @"DownloadSU";
  v446 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1589 forKeys:v1588 count:2];
  v1613[11] = v446;
  v1612[12] = @"DownloadSuccessAtTarget";
  v1586[0] = v3;
  v1586[1] = v2;
  v1587[0] = @"SUDownloaded";
  v1587[1] = @"ReportSUDownloaded";
  v445 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1587 forKeys:v1586 count:2];
  v1613[12] = v445;
  v1612[13] = @"PerformPrepare";
  v1584[0] = v3;
  v1584[1] = v2;
  v1585[0] = @"Preparing";
  v1585[1] = @"PrepareUpdate";
  v444 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1585 forKeys:v1584 count:2];
  v1613[13] = v444;
  v1612[14] = @"PerformSuspend";
  v1582[0] = v3;
  v1582[1] = v2;
  v1583[0] = @"Suspending";
  v1583[1] = @"SuspendUpdate";
  v443 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1583 forKeys:v1582 count:2];
  v1613[14] = v443;
  v1612[15] = @"SuspendSuccessAtTarget";
  v1580[0] = v3;
  v1580[1] = v2;
  v1581[0] = @"Prepared";
  v1581[1] = @"ReportPrepared";
  v442 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1581 forKeys:v1580 count:2];
  v1613[15] = v442;
  v1612[16] = @"PerformResume";
  v1578[0] = v3;
  v1578[1] = v2;
  v1579[0] = @"Resuming";
  v1579[1] = @"ResumeUpdate";
  v441 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1579 forKeys:v1578 count:2];
  v1613[16] = v441;
  v1612[17] = @"ResumeSuccessAtTarget";
  v1576[0] = v3;
  v1576[1] = v2;
  v1577[0] = @"Prepared";
  v1577[1] = @"ReportPrepared";
  v440 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1577 forKeys:v1576 count:2];
  v1613[17] = v440;
  v1612[18] = @"PerformApply";
  v1574[0] = v3;
  v1574[1] = v2;
  v1575[0] = @"Applying";
  v1575[1] = @"ApplyUpdate";
  v439 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1575 forKeys:v1574 count:2];
  v1613[18] = v439;
  v1612[19] = @"ApplySuccess";
  v1572[0] = v3;
  v1572[1] = v2;
  v1573[0] = @"AwaitingReboot";
  v1573[1] = @"ReportApplied";
  v438 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1573 forKeys:v1572 count:2];
  v1613[19] = v438;
  v437 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1613 forKeys:v1612 count:20];
  v1729[2] = v437;
  v1728[3] = @"PreflightingDownloadSU";
  v1570[0] = @"TargetBrainLoaded";
  v1568 = v2;
  v1569 = @"ReportAnomalyAPI";
  v436 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1569 forKeys:&v1568 count:1];
  v1571[0] = v436;
  v1570[1] = @"TargetDownloadPreflighted";
  v1566 = v2;
  v1567 = @"UpdateTarget";
  v435 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1567 forKeys:&v1566 count:1];
  v1571[1] = v435;
  v1570[2] = @"TargetDownloaded";
  v1564 = v2;
  v1565 = @"UpdateTarget";
  v434 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1565 forKeys:&v1564 count:1];
  v1571[2] = v434;
  v1570[3] = @"TargetPrepared";
  v1562 = v2;
  v1563 = @"UpdateTarget";
  v433 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1563 forKeys:&v1562 count:1];
  v1571[3] = v433;
  v1570[4] = @"TargetApplied";
  v1560 = v2;
  v1561 = @"UpdateTarget";
  v432 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1561 forKeys:&v1560 count:1];
  v1571[4] = v432;
  v1570[5] = @"TargetRollback";
  v1558 = v2;
  v1559 = @"DecideCancelBeforeRollback";
  v431 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1559 forKeys:&v1558 count:1];
  v1571[5] = v431;
  v1570[6] = @"ResumeCurrentUpdate";
  v1556 = v2;
  v1557 = @"ReportAnomalyAPI";
  v430 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1557 forKeys:&v1556 count:1];
  v1571[6] = v430;
  v1570[7] = @"CancelCurrentUpdate";
  v1554 = v3;
  v1555 = @"Canceling";
  v429 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1555 forKeys:&v1554 count:1];
  v1571[7] = v429;
  v1570[8] = @"PreflightSuccess";
  v1552 = v2;
  v1553 = @"AdvanceDownloadPreflighted";
  v428 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1553 forKeys:&v1552 count:1];
  v1571[8] = v428;
  v1570[9] = @"PreflightFailed";
  v1550 = v2;
  v1551 = @"ChooseErrorSpaceCheck";
  v427 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1551 forKeys:&v1550 count:1];
  v1571[9] = v427;
  v1570[10] = @"PreflightSuccessAtTarget";
  v1548 = v3;
  v1549 = @"SUDownloadPreflighted";
  v426 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1549 forKeys:&v1548 count:1];
  v1571[10] = v426;
  v1570[11] = @"PerformDownloadSpaceCheck";
  v1546[0] = v3;
  v1546[1] = v2;
  v1547[0] = @"CheckingSpaceForInstall";
  v1547[1] = @"CheckSpace";
  v425 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1547 forKeys:v1546 count:2];
  v1571[11] = v425;
  v1570[12] = @"PerformDownloadSU";
  v1544[0] = v3;
  v1544[1] = v2;
  v1545[0] = @"DownloadingSU";
  v1545[1] = @"DownloadSU";
  v424 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1545 forKeys:v1544 count:2];
  v1571[12] = v424;
  v1570[13] = @"DownloadSuccessAtTarget";
  v1542[0] = v3;
  v1542[1] = v2;
  v1543[0] = @"SUDownloaded";
  v1543[1] = @"ReportSUDownloaded";
  v423 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1543 forKeys:v1542 count:2];
  v1571[13] = v423;
  v1570[14] = @"PerformPrepare";
  v1540[0] = v3;
  v1540[1] = v2;
  v1541[0] = @"Preparing";
  v1541[1] = @"PrepareUpdate";
  v422 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1541 forKeys:v1540 count:2];
  v1571[14] = v422;
  v1570[15] = @"PerformSuspend";
  v1538[0] = v3;
  v1538[1] = v2;
  v1539[0] = @"Suspending";
  v1539[1] = @"SuspendUpdate";
  v421 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1539 forKeys:v1538 count:2];
  v1571[15] = v421;
  v1570[16] = @"SuspendSuccessAtTarget";
  v1536[0] = v3;
  v1536[1] = v2;
  v1537[0] = @"Prepared";
  v1537[1] = @"ReportPrepared";
  v420 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1537 forKeys:v1536 count:2];
  v1571[16] = v420;
  v1570[17] = @"PerformResume";
  v1534[0] = v3;
  v1534[1] = v2;
  v1535[0] = @"Resuming";
  v1535[1] = @"ResumeUpdate";
  v419 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1535 forKeys:v1534 count:2];
  v1571[17] = v419;
  v1570[18] = @"ResumeSuccessAtTarget";
  v1532[0] = v3;
  v1532[1] = v2;
  v1533[0] = @"Prepared";
  v1533[1] = @"ReportPrepared";
  v418 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1533 forKeys:v1532 count:2];
  v1571[18] = v418;
  v1570[19] = @"PerformApply";
  v1530[0] = v3;
  v1530[1] = v2;
  v1531[0] = @"Applying";
  v1531[1] = @"ApplyUpdate";
  v417 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1531 forKeys:v1530 count:2];
  v1571[19] = v417;
  v1570[20] = @"ApplySuccess";
  v1528[0] = v3;
  v1528[1] = v2;
  v1529[0] = @"AwaitingReboot";
  v1529[1] = @"ReportApplied";
  v416 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1529 forKeys:v1528 count:2];
  v1571[20] = v416;
  v1570[21] = @"RB_CancelNonRollbackUpdate";
  v1526 = v3;
  v1527 = @"RB_Canceling";
  v415 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1527 forKeys:&v1526 count:1];
  v1571[21] = v415;
  v1570[22] = @"RB_BeginRollback";
  v1524[0] = v3;
  v1524[1] = v2;
  v1525[0] = @"RB_ReadyToBegin";
  v1525[1] = @"LoadBrainRollback";
  v414 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1525 forKeys:v1524 count:2];
  v1571[22] = v414;
  v1570[23] = @"RB_PerformLoadBrain";
  v1522[0] = v3;
  v1522[1] = v2;
  v1523[0] = @"RB_LoadingBrain";
  v1523[1] = @"LoadBrain";
  v413 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1523 forKeys:v1522 count:2];
  v1571[23] = v413;
  v1570[24] = @"RB_PerformRollbackPrepare";
  v1520[0] = v3;
  v1520[1] = v2;
  v1521[0] = @"RB_RollingBackPrepare";
  v1521[1] = @"RollbackUpdatePrepare";
  v412 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1521 forKeys:v1520 count:2];
  v1571[24] = v412;
  v1570[25] = @"RB_PerformRollbackSuspend";
  v1518[0] = v3;
  v1518[1] = v2;
  v1519[0] = @"RB_RollingBackSuspend";
  v1519[1] = @"RollbackUpdateSuspend";
  v411 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1519 forKeys:v1518 count:2];
  v1571[25] = v411;
  v1570[26] = @"RB_PerformRollbackResume";
  v1516[0] = v3;
  v1516[1] = v2;
  v1517[0] = @"RB_RollingBackResume";
  v1517[1] = @"RollbackUpdateResume";
  v410 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1517 forKeys:v1516 count:2];
  v1571[26] = v410;
  v1570[27] = @"RB_PerformRollbackApply";
  v1514[0] = v3;
  v1514[1] = v2;
  v1515[0] = @"RB_RollingBackApply";
  v1515[1] = @"RollbackUpdateApply";
  v409 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1515 forKeys:v1514 count:2];
  v1571[27] = v409;
  v1570[28] = @"RB_RollbackAppleSuccess";
  v1512[0] = v3;
  v1512[1] = v2;
  v1513[0] = @"AwaitingReboot";
  v1513[1] = @"ReportRollbackSucceeded";
  v408 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1513 forKeys:v1512 count:2];
  v1571[28] = v408;
  v1570[29] = @"PerformErrorSpaceCheck";
  v1510[0] = v3;
  v1510[1] = v2;
  v1511[0] = @"CheckingSpaceAfterError";
  v1511[1] = @"CheckSpace";
  v407 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1511 forKeys:v1510 count:2];
  v1571[29] = v407;
  v1570[30] = @"SkipErrorSpaceCheck";
  v1508[0] = v3;
  v1508[1] = v2;
  v1509[0] = @"ReadyToBegin";
  v1509[1] = @"ReportAttemptFailure";
  v406 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1509 forKeys:v1508 count:2];
  v1571[30] = v406;
  v405 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1571 forKeys:v1570 count:31];
  v1729[3] = v405;
  v1728[4] = @"SUDownloadPreflighted";
  v1506[0] = @"TargetBrainLoaded";
  v1504 = v2;
  v1505 = @"ReportAnomalyAPIEnd";
  v404 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1505 forKeys:&v1504 count:1];
  v1507[0] = v404;
  v1506[1] = @"TargetDownloadPreflighted";
  v1502 = v2;
  v1503 = @"UpdateTarget";
  v403 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1503 forKeys:&v1502 count:1];
  v1507[1] = v403;
  v1506[2] = @"TargetDownloaded";
  v1500 = v2;
  v1501 = @"DecideDownloadSpaceCheck";
  v402 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1501 forKeys:&v1500 count:1];
  v1507[2] = v402;
  v1506[3] = @"TargetPrepared";
  v1498 = v2;
  v1499 = @"DecideDownloadSpaceCheck";
  v401 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1499 forKeys:&v1498 count:1];
  v1507[3] = v401;
  v1506[4] = @"TargetApplied";
  v1496 = v2;
  v1497 = @"DecideDownloadSpaceCheck";
  v400 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1497 forKeys:&v1496 count:1];
  v1507[4] = v400;
  v1506[5] = @"TargetRollback";
  v1494[0] = v3;
  v1494[1] = v2;
  v1495[0] = @"RB_ReadyToBegin";
  v1495[1] = @"LoadBrainRollback";
  v399 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1495 forKeys:v1494 count:2];
  v1507[5] = v399;
  v1506[6] = @"ResumeCurrentUpdate";
  v1492 = v2;
  v1493 = @"ReportAnomalyAPIEnd";
  v398 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1493 forKeys:&v1492 count:1];
  v1507[6] = v398;
  v1506[7] = @"CancelCurrentUpdate";
  v1490[0] = v3;
  v1490[1] = v2;
  v1491[0] = @"ReadyToBegin";
  v1491[1] = @"ReportCanceled";
  v397 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1491 forKeys:v1490 count:2];
  v1507[7] = v397;
  v1506[8] = @"PerformDownloadSpaceCheck";
  v1488[0] = v3;
  v1488[1] = v2;
  v1489[0] = @"CheckingSpaceForInstall";
  v1489[1] = @"CheckSpace";
  v396 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1489 forKeys:v1488 count:2];
  v1507[8] = v396;
  v1506[9] = @"PerformDownloadSU";
  v1486[0] = v3;
  v1486[1] = v2;
  v1487[0] = @"DownloadingSU";
  v1487[1] = @"DownloadSU";
  v395 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1487 forKeys:v1486 count:2];
  v1507[9] = v395;
  v1506[10] = @"DownloadSuccessAtTarget";
  v1484[0] = v3;
  v1484[1] = v2;
  v1485[0] = @"SUDownloaded";
  v1485[1] = @"ReportSUDownloaded";
  v394 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1485 forKeys:v1484 count:2];
  v1507[10] = v394;
  v1506[11] = @"PerformPrepare";
  v1482[0] = v3;
  v1482[1] = v2;
  v1483[0] = @"Preparing";
  v1483[1] = @"PrepareUpdate";
  v393 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1483 forKeys:v1482 count:2];
  v1507[11] = v393;
  v1506[12] = @"PerformSuspend";
  v1480[0] = v3;
  v1480[1] = v2;
  v1481[0] = @"Suspending";
  v1481[1] = @"SuspendUpdate";
  v392 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1481 forKeys:v1480 count:2];
  v1507[12] = v392;
  v1506[13] = @"SuspendSuccessAtTarget";
  v1478[0] = v3;
  v1478[1] = v2;
  v1479[0] = @"Prepared";
  v1479[1] = @"ReportPrepared";
  v391 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1479 forKeys:v1478 count:2];
  v1507[13] = v391;
  v1506[14] = @"PerformResume";
  v1476[0] = v3;
  v1476[1] = v2;
  v1477[0] = @"Resuming";
  v1477[1] = @"ResumeUpdate";
  v390 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1477 forKeys:v1476 count:2];
  v1507[14] = v390;
  v1506[15] = @"ResumeSuccessAtTarget";
  v1474[0] = v3;
  v1474[1] = v2;
  v1475[0] = @"Prepared";
  v1475[1] = @"ReportPrepared";
  v389 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1475 forKeys:v1474 count:2];
  v1507[15] = v389;
  v1506[16] = @"PerformApply";
  v1472[0] = v3;
  v1472[1] = v2;
  v1473[0] = @"Applying";
  v1473[1] = @"ApplyUpdate";
  v388 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1473 forKeys:v1472 count:2];
  v1507[16] = v388;
  v1506[17] = @"ApplySuccess";
  v1470[0] = v3;
  v1470[1] = v2;
  v1471[0] = @"AwaitingReboot";
  v1471[1] = @"ReportApplied";
  v387 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1471 forKeys:v1470 count:2];
  v1507[17] = v387;
  v386 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1507 forKeys:v1506 count:18];
  v1729[4] = v386;
  v1728[5] = @"CheckingSpaceForInstall";
  v1468[0] = @"TargetBrainLoaded";
  v1466 = v2;
  v1467 = @"ReportAnomalyAPI";
  v385 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1467 forKeys:&v1466 count:1];
  v1469[0] = v385;
  v1468[1] = @"TargetDownloadPreflighted";
  v1464 = v2;
  v1465 = @"ReportAnomalyAPI";
  v384 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1465 forKeys:&v1464 count:1];
  v1469[1] = v384;
  v1468[2] = @"TargetDownloaded";
  v1462 = v2;
  v1463 = @"UpdateTarget";
  v383 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1463 forKeys:&v1462 count:1];
  v1469[2] = v383;
  v1468[3] = @"TargetPrepared";
  v1460 = v2;
  v1461 = @"UpdateTarget";
  v382 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1461 forKeys:&v1460 count:1];
  v1469[3] = v382;
  v1468[4] = @"TargetApplied";
  v1458 = v2;
  v1459 = @"UpdateTarget";
  v381 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1459 forKeys:&v1458 count:1];
  v1469[4] = v381;
  v1468[5] = @"TargetRollback";
  v1456 = v2;
  v1457 = @"DecideCancelBeforeRollback";
  v380 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1457 forKeys:&v1456 count:1];
  v1469[5] = v380;
  v1468[6] = @"ResumeCurrentUpdate";
  v1454 = v2;
  v1455 = @"ReportAnomalyAPI";
  v379 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1455 forKeys:&v1454 count:1];
  v1469[6] = v379;
  v1468[7] = @"CancelCurrentUpdate";
  v1452 = v3;
  v1453 = @"Canceling";
  v378 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1453 forKeys:&v1452 count:1];
  v1469[7] = v378;
  v1468[8] = @"SpaceCheckHaveSpace";
  v1450 = v2;
  v1451 = @"DecideDownloadSU";
  v377 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1451 forKeys:&v1450 count:1];
  v1469[8] = v377;
  v1468[9] = @"SpaceCheckNoSpace";
  v1448[0] = v3;
  v1448[1] = v2;
  v1449[0] = @"ReadyToBegin";
  v1449[1] = @"ReportAttemptFailure";
  v376 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1449 forKeys:v1448 count:2];
  v1469[9] = v376;
  v1468[10] = @"SpaceCheckFailed";
  v1446[0] = v3;
  v1446[1] = v2;
  v1447[0] = @"ReadyToBegin";
  v1447[1] = @"ReportAttemptFailure";
  v375 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1447 forKeys:v1446 count:2];
  v1469[10] = v375;
  v1468[11] = @"PerformDownloadSU";
  v1444[0] = v3;
  v1444[1] = v2;
  v1445[0] = @"DownloadingSU";
  v1445[1] = @"DownloadSU";
  v374 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1445 forKeys:v1444 count:2];
  v1469[11] = v374;
  v1468[12] = @"DownloadSuccessAtTarget";
  v1442[0] = v3;
  v1442[1] = v2;
  v1443[0] = @"SUDownloaded";
  v1443[1] = @"ReportSUDownloaded";
  v373 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1443 forKeys:v1442 count:2];
  v1469[12] = v373;
  v1468[13] = @"PerformPrepare";
  v1440[0] = v3;
  v1440[1] = v2;
  v1441[0] = @"Preparing";
  v1441[1] = @"PrepareUpdate";
  v372 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1441 forKeys:v1440 count:2];
  v1469[13] = v372;
  v1468[14] = @"PerformSuspend";
  v1438[0] = v3;
  v1438[1] = v2;
  v1439[0] = @"Suspending";
  v1439[1] = @"SuspendUpdate";
  v371 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1439 forKeys:v1438 count:2];
  v1469[14] = v371;
  v1468[15] = @"SuspendSuccessAtTarget";
  v1436[0] = v3;
  v1436[1] = v2;
  v1437[0] = @"Prepared";
  v1437[1] = @"ReportPrepared";
  v370 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1437 forKeys:v1436 count:2];
  v1469[15] = v370;
  v1468[16] = @"PerformResume";
  v1434[0] = v3;
  v1434[1] = v2;
  v1435[0] = @"Resuming";
  v1435[1] = @"ResumeUpdate";
  v369 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1435 forKeys:v1434 count:2];
  v1469[16] = v369;
  v1468[17] = @"ResumeSuccessAtTarget";
  v1432[0] = v3;
  v1432[1] = v2;
  v1433[0] = @"Prepared";
  v1433[1] = @"ReportPrepared";
  v368 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1433 forKeys:v1432 count:2];
  v1469[17] = v368;
  v1468[18] = @"PerformApply";
  v1430[0] = v3;
  v1430[1] = v2;
  v1431[0] = @"Applying";
  v1431[1] = @"ApplyUpdate";
  v367 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1431 forKeys:v1430 count:2];
  v1469[18] = v367;
  v1468[19] = @"ApplySuccess";
  v1428[0] = v3;
  v1428[1] = v2;
  v1429[0] = @"AwaitingReboot";
  v1429[1] = @"ReportApplied";
  v366 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1429 forKeys:v1428 count:2];
  v1469[19] = v366;
  v1468[20] = @"RB_CancelNonRollbackUpdate";
  v1426 = v3;
  v1427 = @"RB_Canceling";
  v365 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1427 forKeys:&v1426 count:1];
  v1469[20] = v365;
  v1468[21] = @"RB_BeginRollback";
  v1424[0] = v3;
  v1424[1] = v2;
  v1425[0] = @"RB_ReadyToBegin";
  v1425[1] = @"LoadBrainRollback";
  v364 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1425 forKeys:v1424 count:2];
  v1469[21] = v364;
  v1468[22] = @"RB_PerformLoadBrain";
  v1422[0] = v3;
  v1422[1] = v2;
  v1423[0] = @"RB_LoadingBrain";
  v1423[1] = @"LoadBrain";
  v363 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1423 forKeys:v1422 count:2];
  v1469[22] = v363;
  v1468[23] = @"RB_PerformRollbackPrepare";
  v1420[0] = v3;
  v1420[1] = v2;
  v1421[0] = @"RB_RollingBackPrepare";
  v1421[1] = @"RollbackUpdatePrepare";
  v362 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1421 forKeys:v1420 count:2];
  v1469[23] = v362;
  v1468[24] = @"RB_PerformRollbackSuspend";
  v1418[0] = v3;
  v1418[1] = v2;
  v1419[0] = @"RB_RollingBackSuspend";
  v1419[1] = @"RollbackUpdateSuspend";
  v361 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1419 forKeys:v1418 count:2];
  v1469[24] = v361;
  v1468[25] = @"RB_PerformRollbackResume";
  v1416[0] = v3;
  v1416[1] = v2;
  v1417[0] = @"RB_RollingBackResume";
  v1417[1] = @"RollbackUpdateResume";
  v360 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1417 forKeys:v1416 count:2];
  v1469[25] = v360;
  v1468[26] = @"RB_PerformRollbackApply";
  v1414[0] = v3;
  v1414[1] = v2;
  v1415[0] = @"RB_RollingBackApply";
  v1415[1] = @"RollbackUpdateApply";
  v359 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1415 forKeys:v1414 count:2];
  v1469[26] = v359;
  v1468[27] = @"RB_RollbackAppleSuccess";
  v1412[0] = v3;
  v1412[1] = v2;
  v1413[0] = @"AwaitingReboot";
  v1413[1] = @"ReportRollbackSucceeded";
  v358 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1413 forKeys:v1412 count:2];
  v1469[27] = v358;
  v357 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1469 forKeys:v1468 count:28];
  v1729[5] = v357;
  v1728[6] = @"DownloadingSU";
  v1410[0] = @"TargetBrainLoaded";
  v1408 = v2;
  v1409 = @"ReportAnomalyAPI";
  v356 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1409 forKeys:&v1408 count:1];
  v1411[0] = v356;
  v1410[1] = @"TargetDownloadPreflighted";
  v1406 = v2;
  v1407 = @"ReportAnomalyAPI";
  v355 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1407 forKeys:&v1406 count:1];
  v1411[1] = v355;
  v1410[2] = @"TargetDownloaded";
  v1404 = v2;
  v1405 = @"UpdateTargetReconfig";
  v354 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1405 forKeys:&v1404 count:1];
  v1411[2] = v354;
  v1410[3] = @"TargetPrepared";
  v1402 = v2;
  v1403 = @"UpdateTargetReconfig";
  v353 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1403 forKeys:&v1402 count:1];
  v1411[3] = v353;
  v1410[4] = @"TargetApplied";
  v1400 = v2;
  v1401 = @"UpdateTargetReconfig";
  v352 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1401 forKeys:&v1400 count:1];
  v1411[4] = v352;
  v1410[5] = @"TargetRollback";
  v1398 = v2;
  v1399 = @"DecideCancelBeforeRollback";
  v351 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1399 forKeys:&v1398 count:1];
  v1411[5] = v351;
  v1410[6] = @"ResumeCurrentUpdate";
  v1396 = v2;
  v1397 = @"ReportAnomalyAPI";
  v350 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1397 forKeys:&v1396 count:1];
  v1411[6] = v350;
  v1410[7] = @"CancelCurrentUpdate";
  v1394[0] = v3;
  v1394[1] = v2;
  v1395[0] = @"Canceling";
  v1395[1] = @"RemoveSU";
  v349 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1395 forKeys:v1394 count:2];
  v1411[7] = v349;
  v1410[8] = @"DownloadProgress";
  v1392 = v2;
  v1393 = @"ReportDownloadProgress";
  v348 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1393 forKeys:&v1392 count:1];
  v1411[8] = v348;
  v1410[9] = @"DownloadStalled";
  v1390[0] = v3;
  v1390[1] = v2;
  v1391[0] = @"DownloadSUStalled";
  v1391[1] = @"ReportDownloadStalled";
  v347 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1391 forKeys:v1390 count:2];
  v1411[9] = v347;
  v1410[10] = @"DownloadSuccess";
  v1388 = v2;
  v1389 = @"AdvanceSUDownloaded";
  v346 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1389 forKeys:&v1388 count:1];
  v1411[10] = v346;
  v1410[11] = @"DownloadFailed";
  v1386 = v2;
  v1387 = @"ChooseErrorSpaceCheck";
  v345 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1387 forKeys:&v1386 count:1];
  v1411[11] = v345;
  v1410[12] = @"DownloadSuccessAtTarget";
  v1384 = v3;
  v1385 = @"SUDownloaded";
  v344 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1385 forKeys:&v1384 count:1];
  v1411[12] = v344;
  v1410[13] = @"PerformPrepare";
  v1382[0] = v3;
  v1382[1] = v2;
  v1383[0] = @"Preparing";
  v1383[1] = @"PrepareUpdate";
  v343 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1383 forKeys:v1382 count:2];
  v1411[13] = v343;
  v1410[14] = @"PerformSuspend";
  v1380[0] = v3;
  v1380[1] = v2;
  v1381[0] = @"Suspending";
  v1381[1] = @"SuspendUpdate";
  v342 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1381 forKeys:v1380 count:2];
  v1411[14] = v342;
  v1410[15] = @"SuspendSuccessAtTarget";
  v1378[0] = v3;
  v1378[1] = v2;
  v1379[0] = @"Prepared";
  v1379[1] = @"ReportPrepared";
  v341 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1379 forKeys:v1378 count:2];
  v1411[15] = v341;
  v1410[16] = @"PerformResume";
  v1376[0] = v3;
  v1376[1] = v2;
  v1377[0] = @"Resuming";
  v1377[1] = @"ResumeUpdate";
  v340 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1377 forKeys:v1376 count:2];
  v1411[16] = v340;
  v1410[17] = @"ResumeSuccessAtTarget";
  v1374[0] = v3;
  v1374[1] = v2;
  v1375[0] = @"Prepared";
  v1375[1] = @"ReportPrepared";
  v339 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1375 forKeys:v1374 count:2];
  v1411[17] = v339;
  v1410[18] = @"PerformApply";
  v1372[0] = v3;
  v1372[1] = v2;
  v1373[0] = @"Applying";
  v1373[1] = @"ApplyUpdate";
  v338 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1373 forKeys:v1372 count:2];
  v1411[18] = v338;
  v1410[19] = @"ApplySuccess";
  v1370[0] = v3;
  v1370[1] = v2;
  v1371[0] = @"AwaitingReboot";
  v1371[1] = @"ReportApplied";
  v337 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1371 forKeys:v1370 count:2];
  v1411[19] = v337;
  v1410[20] = @"RB_CancelNonRollbackUpdate";
  v1368[0] = v3;
  v1368[1] = v2;
  v1369[0] = @"RB_Canceling";
  v1369[1] = @"RemoveSU";
  v336 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1369 forKeys:v1368 count:2];
  v1411[20] = v336;
  v1410[21] = @"RB_BeginRollback";
  v1366[0] = v3;
  v1366[1] = v2;
  v1367[0] = @"RB_ReadyToBegin";
  v1367[1] = @"LoadBrainRollback";
  v335 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1367 forKeys:v1366 count:2];
  v1411[21] = v335;
  v1410[22] = @"RB_PerformLoadBrain";
  v1364[0] = v3;
  v1364[1] = v2;
  v1365[0] = @"RB_LoadingBrain";
  v1365[1] = @"LoadBrain";
  v334 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1365 forKeys:v1364 count:2];
  v1411[22] = v334;
  v1410[23] = @"RB_PerformRollbackPrepare";
  v1362[0] = v3;
  v1362[1] = v2;
  v1363[0] = @"RB_RollingBackPrepare";
  v1363[1] = @"RollbackUpdatePrepare";
  v333 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1363 forKeys:v1362 count:2];
  v1411[23] = v333;
  v1410[24] = @"RB_PerformRollbackSuspend";
  v1360[0] = v3;
  v1360[1] = v2;
  v1361[0] = @"RB_RollingBackSuspend";
  v1361[1] = @"RollbackUpdateSuspend";
  v332 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1361 forKeys:v1360 count:2];
  v1411[24] = v332;
  v1410[25] = @"RB_PerformRollbackResume";
  v1358[0] = v3;
  v1358[1] = v2;
  v1359[0] = @"RB_RollingBackResume";
  v1359[1] = @"RollbackUpdateResume";
  v331 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1359 forKeys:v1358 count:2];
  v1411[25] = v331;
  v1410[26] = @"RB_PerformRollbackApply";
  v1356[0] = v3;
  v1356[1] = v2;
  v1357[0] = @"RB_RollingBackApply";
  v1357[1] = @"RollbackUpdateApply";
  v330 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1357 forKeys:v1356 count:2];
  v1411[26] = v330;
  v1410[27] = @"RB_RollbackAppleSuccess";
  v1354[0] = v3;
  v1354[1] = v2;
  v1355[0] = @"AwaitingReboot";
  v1355[1] = @"ReportRollbackSucceeded";
  v329 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1355 forKeys:v1354 count:2];
  v1411[27] = v329;
  v1410[28] = @"PerformErrorSpaceCheck";
  v1352[0] = v3;
  v1352[1] = v2;
  v1353[0] = @"CheckingSpaceAfterError";
  v1353[1] = @"CheckSpace";
  v328 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1353 forKeys:v1352 count:2];
  v1411[28] = v328;
  v1410[29] = @"SkipErrorSpaceCheck";
  v1350[0] = v3;
  v1350[1] = v2;
  v1351[0] = @"ReadyToBegin";
  v1351[1] = @"ReportAttemptFailure";
  v327 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1351 forKeys:v1350 count:2];
  v1411[29] = v327;
  v326 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1411 forKeys:v1410 count:30];
  v1729[6] = v326;
  v1728[7] = @"DownloadSUStalled";
  v1348[0] = @"TargetBrainLoaded";
  v1346 = v2;
  v1347 = @"ReportAnomalyAPI";
  v325 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1347 forKeys:&v1346 count:1];
  v1349[0] = v325;
  v1348[1] = @"TargetDownloadPreflighted";
  v1344 = v2;
  v1345 = @"ReportAnomalyAPI";
  v324 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1345 forKeys:&v1344 count:1];
  v1349[1] = v324;
  v1348[2] = @"TargetDownloaded";
  v1342 = v2;
  v1343 = @"UpdateTargetReconfig";
  v323 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1343 forKeys:&v1342 count:1];
  v1349[2] = v323;
  v1348[3] = @"TargetPrepared";
  v1340 = v2;
  v1341 = @"UpdateTargetReconfig";
  v321 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1341 forKeys:&v1340 count:1];
  v1349[3] = v321;
  v1348[4] = @"TargetApplied";
  v1338 = v2;
  v1339 = @"UpdateTargetReconfig";
  v320 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1339 forKeys:&v1338 count:1];
  v1349[4] = v320;
  v1348[5] = @"TargetRollback";
  v1336 = v2;
  v1337 = @"DecideCancelBeforeRollback";
  v319 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1337 forKeys:&v1336 count:1];
  v1349[5] = v319;
  v1348[6] = @"ResumeCurrentUpdate";
  v1334 = v2;
  v1335 = @"ReportAnomalyAPI";
  v318 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1335 forKeys:&v1334 count:1];
  v1349[6] = v318;
  v1348[7] = @"CancelCurrentUpdate";
  v1332[0] = v3;
  v1332[1] = v2;
  v1333[0] = @"Canceling";
  v1333[1] = @"RemoveSU";
  v317 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1333 forKeys:v1332 count:2];
  v1349[7] = v317;
  v1348[8] = @"DownloadProgress";
  v1330[0] = v3;
  v1330[1] = v2;
  v1331[0] = @"DownloadingSU";
  v1331[1] = @"ReportDownloadProgress";
  v316 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1331 forKeys:v1330 count:2];
  v1349[8] = v316;
  v1348[9] = @"DownloadStalled";
  v1328 = v2;
  v1329 = *MEMORY[0x277D647D0];
  v536 = v1329;
  v315 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1329 forKeys:&v1328 count:1];
  v1349[9] = v315;
  v1348[10] = @"DownloadSuccess";
  v1326 = v2;
  v1327 = @"AdvanceSUDownloaded";
  v314 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1327 forKeys:&v1326 count:1];
  v1349[10] = v314;
  v1348[11] = @"DownloadFailed";
  v1324 = v2;
  v1325 = @"ChooseErrorSpaceCheck";
  v313 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1325 forKeys:&v1324 count:1];
  v1349[11] = v313;
  v1348[12] = @"DownloadSuccessAtTarget";
  v1322 = v3;
  v1323 = @"SUDownloaded";
  v312 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1323 forKeys:&v1322 count:1];
  v1349[12] = v312;
  v1348[13] = @"PerformPrepare";
  v1320[0] = v3;
  v1320[1] = v2;
  v1321[0] = @"Preparing";
  v1321[1] = @"PrepareUpdate";
  v311 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1321 forKeys:v1320 count:2];
  v1349[13] = v311;
  v1348[14] = @"PerformSuspend";
  v1318[0] = v3;
  v1318[1] = v2;
  v1319[0] = @"Suspending";
  v1319[1] = @"SuspendUpdate";
  v310 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1319 forKeys:v1318 count:2];
  v1349[14] = v310;
  v1348[15] = @"SuspendSuccessAtTarget";
  v1316[0] = v3;
  v1316[1] = v2;
  v1317[0] = @"Prepared";
  v1317[1] = @"ReportPrepared";
  v309 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1317 forKeys:v1316 count:2];
  v1349[15] = v309;
  v1348[16] = @"PerformResume";
  v1314[0] = v3;
  v1314[1] = v2;
  v1315[0] = @"Resuming";
  v1315[1] = @"ResumeUpdate";
  v308 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1315 forKeys:v1314 count:2];
  v1349[16] = v308;
  v1348[17] = @"ResumeSuccessAtTarget";
  v1312[0] = v3;
  v1312[1] = v2;
  v1313[0] = @"Prepared";
  v1313[1] = @"ReportPrepared";
  v307 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1313 forKeys:v1312 count:2];
  v1349[17] = v307;
  v1348[18] = @"PerformApply";
  v1310[0] = v3;
  v1310[1] = v2;
  v1311[0] = @"Applying";
  v1311[1] = @"ApplyUpdate";
  v306 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1311 forKeys:v1310 count:2];
  v1349[18] = v306;
  v1348[19] = @"ApplySuccess";
  v1308[0] = v3;
  v1308[1] = v2;
  v1309[0] = @"AwaitingReboot";
  v1309[1] = @"ReportApplied";
  v305 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1309 forKeys:v1308 count:2];
  v1349[19] = v305;
  v1348[20] = @"RB_CancelNonRollbackUpdate";
  v1306[0] = v3;
  v1306[1] = v2;
  v1307[0] = @"RB_Canceling";
  v1307[1] = @"RemoveSU";
  v304 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1307 forKeys:v1306 count:2];
  v1349[20] = v304;
  v1348[21] = @"RB_BeginRollback";
  v1304[0] = v3;
  v1304[1] = v2;
  v1305[0] = @"RB_ReadyToBegin";
  v1305[1] = @"LoadBrainRollback";
  v303 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1305 forKeys:v1304 count:2];
  v1349[21] = v303;
  v1348[22] = @"RB_PerformLoadBrain";
  v1302[0] = v3;
  v1302[1] = v2;
  v1303[0] = @"RB_LoadingBrain";
  v1303[1] = @"LoadBrain";
  v301 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1303 forKeys:v1302 count:2];
  v1349[22] = v301;
  v1348[23] = @"RB_PerformRollbackPrepare";
  v1300[0] = v3;
  v1300[1] = v2;
  v1301[0] = @"RB_RollingBackPrepare";
  v1301[1] = @"RollbackUpdatePrepare";
  v300 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1301 forKeys:v1300 count:2];
  v1349[23] = v300;
  v1348[24] = @"RB_PerformRollbackSuspend";
  v1298[0] = v3;
  v1298[1] = v2;
  v1299[0] = @"RB_RollingBackSuspend";
  v1299[1] = @"RollbackUpdateSuspend";
  v299 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1299 forKeys:v1298 count:2];
  v1349[24] = v299;
  v1348[25] = @"RB_PerformRollbackResume";
  v1296[0] = v3;
  v1296[1] = v2;
  v1297[0] = @"RB_RollingBackResume";
  v1297[1] = @"RollbackUpdateResume";
  v298 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1297 forKeys:v1296 count:2];
  v1349[25] = v298;
  v1348[26] = @"RB_PerformRollbackApply";
  v1294[0] = v3;
  v1294[1] = v2;
  v1295[0] = @"RB_RollingBackApply";
  v1295[1] = @"RollbackUpdateApply";
  v297 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1295 forKeys:v1294 count:2];
  v1349[26] = v297;
  v1348[27] = @"RB_RollbackAppleSuccess";
  v1292[0] = v3;
  v1292[1] = v2;
  v1293[0] = @"AwaitingReboot";
  v1293[1] = @"ReportRollbackSucceeded";
  v296 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1293 forKeys:v1292 count:2];
  v1349[27] = v296;
  v1348[28] = @"PerformErrorSpaceCheck";
  v1290[0] = v3;
  v1290[1] = v2;
  v1291[0] = @"CheckingSpaceAfterError";
  v1291[1] = @"CheckSpace";
  v295 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1291 forKeys:v1290 count:2];
  v1349[28] = v295;
  v1348[29] = @"SkipErrorSpaceCheck";
  v1288[0] = v3;
  v1288[1] = v2;
  v1289[0] = @"ReadyToBegin";
  v1289[1] = @"ReportAttemptFailure";
  v294 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1289 forKeys:v1288 count:2];
  v1349[29] = v294;
  v293 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1349 forKeys:v1348 count:30];
  v1729[7] = v293;
  v1728[8] = @"SUDownloaded";
  v1286[0] = @"TargetBrainLoaded";
  v1284 = v2;
  v1285 = @"ReportAnomalyAPIEnd";
  v538 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1285 forKeys:&v1284 count:1];
  v1287[0] = v538;
  v1286[1] = @"TargetDownloadPreflighted";
  v1282 = v2;
  v1283 = @"ReportAnomalyAPIEnd";
  v292 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1283 forKeys:&v1282 count:1];
  v1287[1] = v292;
  v1286[2] = @"TargetDownloaded";
  v1280 = v2;
  v1281 = @"UpdateTarget";
  v291 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1281 forKeys:&v1280 count:1];
  v1287[2] = v291;
  v1286[3] = @"TargetPrepared";
  v1278 = v2;
  v1279 = @"DecidePrepareUpdate";
  v290 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1279 forKeys:&v1278 count:1];
  v1287[3] = v290;
  v1286[4] = @"TargetApplied";
  v1276 = v2;
  v1277 = @"DecidePrepareUpdate";
  v289 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1277 forKeys:&v1276 count:1];
  v1287[4] = v289;
  v1286[5] = @"TargetRollback";
  v1274 = v2;
  v1275 = @"DecideCancelBeforeRollback";
  v288 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1275 forKeys:&v1274 count:1];
  v1287[5] = v288;
  v1286[6] = @"ResumeCurrentUpdate";
  v1272 = v2;
  v1273 = @"ReportAnomalyAPIEnd";
  v287 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1273 forKeys:&v1272 count:1];
  v1287[6] = v287;
  v1286[7] = @"CancelCurrentUpdate";
  v1270[0] = v3;
  v1270[1] = v2;
  v1271[0] = @"Canceling";
  v1271[1] = @"RemoveSU";
  v286 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1271 forKeys:v1270 count:2];
  v1287[7] = v286;
  v1286[8] = @"PerformPrepare";
  v1268[0] = v3;
  v1268[1] = v2;
  v1269[0] = @"Preparing";
  v1269[1] = @"PrepareUpdate";
  v285 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1269 forKeys:v1268 count:2];
  v1287[8] = v285;
  v1286[9] = @"PerformSuspend";
  v1266[0] = v3;
  v1266[1] = v2;
  v1267[0] = @"Suspending";
  v1267[1] = @"SuspendUpdate";
  v284 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1267 forKeys:v1266 count:2];
  v1287[9] = v284;
  v1286[10] = @"SuspendSuccessAtTarget";
  v1264[0] = v3;
  v1264[1] = v2;
  v1265[0] = @"Prepared";
  v1265[1] = @"ReportPrepared";
  v283 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1265 forKeys:v1264 count:2];
  v1287[10] = v283;
  v1286[11] = @"PerformResume";
  v1262[0] = v3;
  v1262[1] = v2;
  v1263[0] = @"Resuming";
  v1263[1] = @"ResumeUpdate";
  v282 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1263 forKeys:v1262 count:2];
  v1287[11] = v282;
  v1286[12] = @"ResumeSuccessAtTarget";
  v1260[0] = v3;
  v1260[1] = v2;
  v1261[0] = @"Prepared";
  v1261[1] = @"ReportPrepared";
  v281 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1261 forKeys:v1260 count:2];
  v1287[12] = v281;
  v1286[13] = @"PerformApply";
  v1258[0] = v3;
  v1258[1] = v2;
  v1259[0] = @"Applying";
  v1259[1] = @"ApplyUpdate";
  v280 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1259 forKeys:v1258 count:2];
  v1287[13] = v280;
  v1286[14] = @"ApplySuccess";
  v1256[0] = v3;
  v1256[1] = v2;
  v1257[0] = @"AwaitingReboot";
  v1257[1] = @"ReportApplied";
  v279 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1257 forKeys:v1256 count:2];
  v1287[14] = v279;
  v1286[15] = @"RB_CancelNonRollbackUpdate";
  v1254[0] = v3;
  v1254[1] = v2;
  v1255[0] = @"RB_Canceling";
  v1255[1] = @"RemoveSU";
  v278 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1255 forKeys:v1254 count:2];
  v1287[15] = v278;
  v1286[16] = @"RB_BeginRollback";
  v1252[0] = v3;
  v1252[1] = v2;
  v1253[0] = @"RB_ReadyToBegin";
  v1253[1] = @"LoadBrainRollback";
  v277 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1253 forKeys:v1252 count:2];
  v1287[16] = v277;
  v1286[17] = @"RB_PerformLoadBrain";
  v1250[0] = v3;
  v1250[1] = v2;
  v1251[0] = @"RB_LoadingBrain";
  v1251[1] = @"LoadBrain";
  v276 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1251 forKeys:v1250 count:2];
  v1287[17] = v276;
  v1286[18] = @"RB_PerformRollbackPrepare";
  v1248[0] = v3;
  v1248[1] = v2;
  v1249[0] = @"RB_RollingBackPrepare";
  v1249[1] = @"RollbackUpdatePrepare";
  v275 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1249 forKeys:v1248 count:2];
  v1287[18] = v275;
  v1286[19] = @"RB_PerformRollbackSuspend";
  v1246[0] = v3;
  v1246[1] = v2;
  v1247[0] = @"RB_RollingBackSuspend";
  v1247[1] = @"RollbackUpdateSuspend";
  v274 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1247 forKeys:v1246 count:2];
  v1287[19] = v274;
  v1286[20] = @"RB_PerformRollbackResume";
  v1244[0] = v3;
  v1244[1] = v2;
  v1245[0] = @"RB_RollingBackResume";
  v1245[1] = @"RollbackUpdateResume";
  v273 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1245 forKeys:v1244 count:2];
  v1287[20] = v273;
  v1286[21] = @"RB_PerformRollbackApply";
  v1242[0] = v3;
  v1242[1] = v2;
  v1243[0] = @"RB_RollingBackApply";
  v1243[1] = @"RollbackUpdateApply";
  v272 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1243 forKeys:v1242 count:2];
  v1287[21] = v272;
  v1286[22] = @"RB_RollbackAppleSuccess";
  v1240[0] = v3;
  v1240[1] = v2;
  v1241[0] = @"AwaitingReboot";
  v1241[1] = @"ReportRollbackSucceeded";
  v271 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1241 forKeys:v1240 count:2];
  v1287[22] = v271;
  v270 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1287 forKeys:v1286 count:23];
  v1729[8] = v270;
  v1728[9] = @"Preparing";
  v1238[0] = @"TargetBrainLoaded";
  v1236 = v2;
  v1237 = @"ReportAnomalyAPI";
  v269 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1237 forKeys:&v1236 count:1];
  v1239[0] = v269;
  v1238[1] = @"TargetDownloadPreflighted";
  v1234 = v2;
  v1235 = @"ReportAnomalyAPI";
  v268 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1235 forKeys:&v1234 count:1];
  v1239[1] = v268;
  v1238[2] = @"TargetDownloaded";
  v1232 = v2;
  v1233 = @"ReportAnomalyAPI";
  v267 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1233 forKeys:&v1232 count:1];
  v1239[2] = v267;
  v1238[3] = @"TargetPrepared";
  v1230 = v2;
  v1231 = @"UpdateTarget";
  v266 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1231 forKeys:&v1230 count:1];
  v1239[3] = v266;
  v1238[4] = @"TargetApplied";
  v1228 = v2;
  v1229 = @"UpdateTarget";
  v265 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1229 forKeys:&v1228 count:1];
  v1239[4] = v265;
  v1238[5] = @"TargetRollback";
  v1226 = v2;
  v1227 = @"DecideCancelBeforeRollback";
  v264 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1227 forKeys:&v1226 count:1];
  v1239[5] = v264;
  v1238[6] = @"ResumeCurrentUpdate";
  v1224 = v2;
  v1225 = @"ReportAnomalyAPI";
  v263 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1225 forKeys:&v1224 count:1];
  v1239[6] = v263;
  v1238[7] = @"CancelCurrentUpdate";
  v1222[0] = v3;
  v1222[1] = v2;
  v1223[0] = @"Canceling";
  v1223[1] = @"CancelPrepare";
  v262 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1223 forKeys:v1222 count:2];
  v1239[7] = v262;
  v1238[8] = @"PrepareProgress";
  v1220 = v2;
  v1221 = @"ReportPrepareProgress";
  v261 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1221 forKeys:&v1220 count:1];
  v1239[8] = v261;
  v1238[9] = @"PrepareSuccess";
  v1218 = v2;
  v1219 = @"DecideSuspendUpdate";
  v260 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1219 forKeys:&v1218 count:1];
  v1239[9] = v260;
  v1238[10] = @"PrepareFailed";
  v1216[0] = v3;
  v1216[1] = v2;
  v1217[0] = @"RemovingSU";
  v1217[1] = @"RemoveSU";
  v259 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1217 forKeys:v1216 count:2];
  v1239[10] = v259;
  v1238[11] = @"PerformSuspend";
  v1214[0] = v3;
  v1214[1] = v2;
  v1215[0] = @"Suspending";
  v1215[1] = @"SuspendUpdate";
  v542 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1215 forKeys:v1214 count:2];
  v1239[11] = v542;
  v1238[12] = @"SuspendSuccessAtTarget";
  v1212[0] = v3;
  v1212[1] = v2;
  v1213[0] = @"Prepared";
  v1213[1] = @"ReportPrepared";
  v258 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1213 forKeys:v1212 count:2];
  v1239[12] = v258;
  v1238[13] = @"PerformResume";
  v1210[0] = v3;
  v1210[1] = v2;
  v1211[0] = @"Resuming";
  v1211[1] = @"ResumeUpdate";
  v257 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1211 forKeys:v1210 count:2];
  v1239[13] = v257;
  v1238[14] = @"ResumeSuccessAtTarget";
  v1208[0] = v3;
  v1208[1] = v2;
  v1209[0] = @"Prepared";
  v1209[1] = @"ReportPrepared";
  v256 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1209 forKeys:v1208 count:2];
  v1239[14] = v256;
  v1238[15] = @"PerformApply";
  v1206[0] = v3;
  v1206[1] = v2;
  v1207[0] = @"Applying";
  v1207[1] = @"ApplyUpdate";
  v255 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1207 forKeys:v1206 count:2];
  v1239[15] = v255;
  v1238[16] = @"ApplySuccess";
  v1204[0] = v3;
  v1204[1] = v2;
  v1205[0] = @"AwaitingReboot";
  v1205[1] = @"ReportApplied";
  v254 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1205 forKeys:v1204 count:2];
  v1239[16] = v254;
  v1238[17] = @"RB_CancelNonRollbackUpdate";
  v1202[0] = v3;
  v1202[1] = v2;
  v1203[0] = @"RB_Canceling";
  v1203[1] = @"CancelPrepare";
  v253 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1203 forKeys:v1202 count:2];
  v1239[17] = v253;
  v1238[18] = @"RB_BeginRollback";
  v1200[0] = v3;
  v1200[1] = v2;
  v1201[0] = @"RB_ReadyToBegin";
  v1201[1] = @"LoadBrainRollback";
  v252 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1201 forKeys:v1200 count:2];
  v1239[18] = v252;
  v1238[19] = @"RB_PerformLoadBrain";
  v1198[0] = v3;
  v1198[1] = v2;
  v1199[0] = @"RB_LoadingBrain";
  v1199[1] = @"LoadBrain";
  v251 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1199 forKeys:v1198 count:2];
  v1239[19] = v251;
  v1238[20] = @"RB_PerformRollbackPrepare";
  v1196[0] = v3;
  v1196[1] = v2;
  v1197[0] = @"RB_RollingBackPrepare";
  v1197[1] = @"RollbackUpdatePrepare";
  v250 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1197 forKeys:v1196 count:2];
  v1239[20] = v250;
  v1238[21] = @"RB_PerformRollbackSuspend";
  v1194[0] = v3;
  v1194[1] = v2;
  v1195[0] = @"RB_RollingBackSuspend";
  v1195[1] = @"RollbackUpdateSuspend";
  v249 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1195 forKeys:v1194 count:2];
  v1239[21] = v249;
  v1238[22] = @"RB_PerformRollbackResume";
  v1192[0] = v3;
  v1192[1] = v2;
  v1193[0] = @"RB_RollingBackResume";
  v1193[1] = @"RollbackUpdateResume";
  v248 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1193 forKeys:v1192 count:2];
  v1239[22] = v248;
  v1238[23] = @"RB_PerformRollbackApply";
  v1190[0] = v3;
  v1190[1] = v2;
  v1191[0] = @"RB_RollingBackApply";
  v1191[1] = @"RollbackUpdateApply";
  v247 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1191 forKeys:v1190 count:2];
  v1239[23] = v247;
  v1238[24] = @"RB_RollbackAppleSuccess";
  v1188[0] = v3;
  v1188[1] = v2;
  v1189[0] = @"AwaitingReboot";
  v1189[1] = @"ReportRollbackSucceeded";
  v246 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1189 forKeys:v1188 count:2];
  v1239[24] = v246;
  v245 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1239 forKeys:v1238 count:25];
  v1729[9] = v245;
  v1728[10] = @"Suspending";
  v1186[0] = @"TargetBrainLoaded";
  v1184 = v2;
  v1185 = @"ReportAnomalyAPI";
  v244 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1185 forKeys:&v1184 count:1];
  v1187[0] = v244;
  v1186[1] = @"TargetDownloadPreflighted";
  v1182 = v2;
  v1183 = @"ReportAnomalyAPI";
  v243 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1183 forKeys:&v1182 count:1];
  v1187[1] = v243;
  v1186[2] = @"TargetDownloaded";
  v1180 = v2;
  v1181 = @"ReportAnomalyAPI";
  v242 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1181 forKeys:&v1180 count:1];
  v1187[2] = v242;
  v1186[3] = @"TargetPrepared";
  v1178 = v2;
  v1179 = @"UpdateTarget";
  v241 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1179 forKeys:&v1178 count:1];
  v1187[3] = v241;
  v1186[4] = @"TargetApplied";
  v1176 = v2;
  v1177 = @"UpdateTarget";
  v240 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1177 forKeys:&v1176 count:1];
  v1187[4] = v240;
  v1186[5] = @"TargetRollback";
  v1174 = v2;
  v1175 = @"DecideCancelBeforeRollback";
  v239 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1175 forKeys:&v1174 count:1];
  v1187[5] = v239;
  v1186[6] = @"ResumeCurrentUpdate";
  v1172 = v2;
  v1173 = @"ReportAnomalyAPI";
  v238 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1173 forKeys:&v1172 count:1];
  v1187[6] = v238;
  v1186[7] = @"CancelCurrentUpdate";
  v1170 = v3;
  v1171 = @"Canceling";
  v237 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1171 forKeys:&v1170 count:1];
  v1187[7] = v237;
  v1186[8] = @"SuspendSuccess";
  v1168 = v2;
  v1169 = @"AdvanceSuspended";
  v236 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1169 forKeys:&v1168 count:1];
  v1187[8] = v236;
  v1186[9] = @"SuspendFailed";
  v1166[0] = v3;
  v1166[1] = v2;
  v1167[0] = @"RemovingSU";
  v1167[1] = @"RemoveSU";
  v235 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1167 forKeys:v1166 count:2];
  v1187[9] = v235;
  v1186[10] = @"SuspendSuccessAtTarget";
  v1164[0] = v3;
  v1164[1] = v2;
  v1165[0] = @"Prepared";
  v1165[1] = @"ReportPrepared";
  v234 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1165 forKeys:v1164 count:2];
  v1187[10] = v234;
  v1186[11] = @"PerformResume";
  v1162[0] = v3;
  v1162[1] = v2;
  v1163[0] = @"Resuming";
  v1163[1] = @"ResumeUpdate";
  v233 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1163 forKeys:v1162 count:2];
  v1187[11] = v233;
  v1186[12] = @"ResumeSuccessAtTarget";
  v1160[0] = v3;
  v1160[1] = v2;
  v1161[0] = @"Prepared";
  v1161[1] = @"ReportPrepared";
  v232 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1161 forKeys:v1160 count:2];
  v1187[12] = v232;
  v1186[13] = @"PerformApply";
  v1158[0] = v3;
  v1158[1] = v2;
  v1159[0] = @"Applying";
  v1159[1] = @"ApplyUpdate";
  v231 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1159 forKeys:v1158 count:2];
  v1187[13] = v231;
  v1186[14] = @"ApplySuccess";
  v1156[0] = v3;
  v1156[1] = v2;
  v1157[0] = @"AwaitingReboot";
  v1157[1] = @"ReportApplied";
  v230 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1157 forKeys:v1156 count:2];
  v1187[14] = v230;
  v1186[15] = @"RB_CancelNonRollbackUpdate";
  v1154 = v3;
  v1155 = @"RB_Canceling";
  v229 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1155 forKeys:&v1154 count:1];
  v1187[15] = v229;
  v1186[16] = @"RB_BeginRollback";
  v1152[0] = v3;
  v1152[1] = v2;
  v1153[0] = @"RB_ReadyToBegin";
  v1153[1] = @"LoadBrainRollback";
  v228 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1153 forKeys:v1152 count:2];
  v1187[16] = v228;
  v1186[17] = @"RB_PerformLoadBrain";
  v1150[0] = v3;
  v1150[1] = v2;
  v1151[0] = @"RB_LoadingBrain";
  v1151[1] = @"LoadBrain";
  v227 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1151 forKeys:v1150 count:2];
  v1187[17] = v227;
  v1186[18] = @"RB_PerformRollbackPrepare";
  v1148[0] = v3;
  v1148[1] = v2;
  v1149[0] = @"RB_RollingBackPrepare";
  v1149[1] = @"RollbackUpdatePrepare";
  v226 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1149 forKeys:v1148 count:2];
  v1187[18] = v226;
  v1186[19] = @"RB_PerformRollbackSuspend";
  v1146[0] = v3;
  v1146[1] = v2;
  v1147[0] = @"RB_RollingBackSuspend";
  v1147[1] = @"RollbackUpdateSuspend";
  v225 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1147 forKeys:v1146 count:2];
  v1187[19] = v225;
  v1186[20] = @"RB_PerformRollbackResume";
  v1144[0] = v3;
  v1144[1] = v2;
  v1145[0] = @"RB_RollingBackResume";
  v1145[1] = @"RollbackUpdateResume";
  v224 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1145 forKeys:v1144 count:2];
  v1187[20] = v224;
  v1186[21] = @"RB_PerformRollbackApply";
  v1142[0] = v3;
  v1142[1] = v2;
  v1143[0] = @"RB_RollingBackApply";
  v1143[1] = @"RollbackUpdateApply";
  v223 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1143 forKeys:v1142 count:2];
  v1187[21] = v223;
  v1186[22] = @"RB_RollbackAppleSuccess";
  v1140[0] = v3;
  v1140[1] = v2;
  v1141[0] = @"AwaitingReboot";
  v1141[1] = @"ReportRollbackSucceeded";
  v222 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1141 forKeys:v1140 count:2];
  v1187[22] = v222;
  v221 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1187 forKeys:v1186 count:23];
  v1729[10] = v221;
  v1728[11] = @"Prepared";
  v1138[0] = @"TargetBrainLoaded";
  v1136 = v2;
  v1137 = @"ReportAnomalyAPIEnd";
  v220 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1137 forKeys:&v1136 count:1];
  v1139[0] = v220;
  v1138[1] = @"TargetDownloadPreflighted";
  v1134 = v2;
  v1135 = @"ReportAnomalyAPIEnd";
  v219 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1135 forKeys:&v1134 count:1];
  v1139[1] = v219;
  v1138[2] = @"TargetDownloaded";
  v1132 = v2;
  v1133 = @"ReportAnomalyAPIEnd";
  v218 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1133 forKeys:&v1132 count:1];
  v1139[2] = v218;
  v1138[3] = @"TargetPrepared";
  v1130 = v2;
  v1131 = @"UpdateTarget";
  v217 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1131 forKeys:&v1130 count:1];
  v1139[3] = v217;
  v1138[4] = @"TargetApplied";
  v1128 = v2;
  v1129 = @"DecideResumeUpdate";
  v216 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1129 forKeys:&v1128 count:1];
  v1139[4] = v216;
  v1138[5] = @"TargetRollback";
  v1126 = v2;
  v1127 = @"DecideCancelBeforeRollback";
  v215 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1127 forKeys:&v1126 count:1];
  v1139[5] = v215;
  v1138[6] = @"ResumeCurrentUpdate";
  v1124[0] = v3;
  v1124[1] = v2;
  v1125[0] = @"ResumingCurrent";
  v1125[1] = @"ResumeCurrentUpdate";
  v214 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1125 forKeys:v1124 count:2];
  v1139[6] = v214;
  v1138[7] = @"CancelCurrentUpdate";
  v1122[0] = v3;
  v1122[1] = v2;
  v1123[0] = @"Canceling";
  v1123[1] = @"RemovePrepared";
  v213 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1123 forKeys:v1122 count:2];
  v1139[7] = v213;
  v1138[8] = @"PerformResume";
  v1120[0] = v3;
  v1120[1] = v2;
  v1121[0] = @"Resuming";
  v1121[1] = @"ResumeUpdate";
  v212 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1121 forKeys:v1120 count:2];
  v1139[8] = v212;
  v1138[9] = @"ResumeSuccessAtTarget";
  v1118 = v2;
  v1119 = @"ReportPrepared";
  v211 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1119 forKeys:&v1118 count:1];
  v1139[9] = v211;
  v1138[10] = @"PerformApply";
  v1116[0] = v3;
  v1116[1] = v2;
  v1117[0] = @"Applying";
  v1117[1] = @"ApplyUpdate";
  v210 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1117 forKeys:v1116 count:2];
  v1139[10] = v210;
  v1138[11] = @"ApplySuccess";
  v1114[0] = v3;
  v1114[1] = v2;
  v1115[0] = @"AwaitingReboot";
  v1115[1] = @"ReportApplied";
  v209 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1115 forKeys:v1114 count:2];
  v1139[11] = v209;
  v1138[12] = @"RB_CancelNonRollbackUpdate";
  v1112[0] = v3;
  v1112[1] = v2;
  v1113[0] = @"RB_Canceling";
  v1113[1] = @"RemovePrepared";
  v208 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1113 forKeys:v1112 count:2];
  v1139[12] = v208;
  v1138[13] = @"RB_BeginRollback";
  v1110[0] = v3;
  v1110[1] = v2;
  v1111[0] = @"RB_ReadyToBegin";
  v1111[1] = @"LoadBrainRollback";
  v207 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1111 forKeys:v1110 count:2];
  v1139[13] = v207;
  v1138[14] = @"RB_PerformLoadBrain";
  v1108[0] = v3;
  v1108[1] = v2;
  v1109[0] = @"RB_LoadingBrain";
  v1109[1] = @"LoadBrain";
  v206 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1109 forKeys:v1108 count:2];
  v1139[14] = v206;
  v1138[15] = @"RB_PerformRollbackPrepare";
  v1106[0] = v3;
  v1106[1] = v2;
  v1107[0] = @"RB_RollingBackPrepare";
  v1107[1] = @"RollbackUpdatePrepare";
  v205 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1107 forKeys:v1106 count:2];
  v1139[15] = v205;
  v1138[16] = @"RB_PerformRollbackSuspend";
  v1104[0] = v3;
  v1104[1] = v2;
  v1105[0] = @"RB_RollingBackSuspend";
  v1105[1] = @"RollbackUpdateSuspend";
  v204 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1105 forKeys:v1104 count:2];
  v1139[16] = v204;
  v1138[17] = @"RB_PerformRollbackResume";
  v1102[0] = v3;
  v1102[1] = v2;
  v1103[0] = @"RB_RollingBackResume";
  v1103[1] = @"RollbackUpdateResume";
  v203 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1103 forKeys:v1102 count:2];
  v1139[17] = v203;
  v1138[18] = @"RB_PerformRollbackApply";
  v1100[0] = v3;
  v1100[1] = v2;
  v1101[0] = @"RB_RollingBackApply";
  v1101[1] = @"RollbackUpdateApply";
  v202 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1101 forKeys:v1100 count:2];
  v1139[18] = v202;
  v1138[19] = @"RB_RollbackAppleSuccess";
  v1098[0] = v3;
  v1098[1] = v2;
  v1099[0] = @"AwaitingReboot";
  v1099[1] = @"ReportRollbackSucceeded";
  v201 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1099 forKeys:v1098 count:2];
  v1139[19] = v201;
  v200 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1139 forKeys:v1138 count:20];
  v1729[11] = v200;
  v1728[12] = @"ResumingCurrent";
  v1096[0] = @"TargetBrainLoaded";
  v1094 = v2;
  v1095 = @"ReportAnomalyAPI";
  v199 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1095 forKeys:&v1094 count:1];
  v1097[0] = v199;
  v1096[1] = @"TargetDownloadPreflighted";
  v1092 = v2;
  v1093 = @"ReportAnomalyAPI";
  v198 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1093 forKeys:&v1092 count:1];
  v1097[1] = v198;
  v1096[2] = @"TargetDownloaded";
  v1090 = v2;
  v1091 = @"ReportAnomalyAPI";
  v197 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1091 forKeys:&v1090 count:1];
  v1097[2] = v197;
  v1096[3] = @"TargetPrepared";
  v1088 = v2;
  v1089 = @"UpdateTarget";
  v196 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1089 forKeys:&v1088 count:1];
  v1097[3] = v196;
  v1096[4] = @"TargetApplied";
  v1086[0] = v3;
  v1086[1] = v2;
  v1087[0] = @"Resuming";
  v1087[1] = @"UpdateTarget";
  v195 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1087 forKeys:v1086 count:2];
  v1097[4] = v195;
  v1096[5] = @"TargetRollback";
  v1084 = v2;
  v1085 = @"DecideCancelBeforeRollback";
  v194 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1085 forKeys:&v1084 count:1];
  v1097[5] = v194;
  v1096[6] = @"ResumeCurrentUpdate";
  v1082 = v2;
  v1083 = @"ReportAnomalyAPI";
  v193 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1083 forKeys:&v1082 count:1];
  v1097[6] = v193;
  v1096[7] = @"CancelCurrentUpdate";
  v1080 = v3;
  v1081 = @"Canceling";
  v192 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1081 forKeys:&v1080 count:1];
  v1097[7] = v192;
  v1096[8] = @"ResumeSuccess";
  v1078[0] = v3;
  v1078[1] = v2;
  v1079[0] = @"Prepared";
  v1079[1] = @"ReportResumeCurrentSuccess";
  v191 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1079 forKeys:v1078 count:2];
  v1097[8] = v191;
  v1096[9] = @"ResumeFailed";
  v1076[0] = v3;
  v1076[1] = v2;
  v1077[0] = @"Prepared";
  v1077[1] = @"ReportResumeCurrentFailed";
  v190 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1077 forKeys:v1076 count:2];
  v1097[9] = v190;
  v1096[10] = @"RB_CancelNonRollbackUpdate";
  v1074 = v3;
  v1075 = @"RB_Canceling";
  v189 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1075 forKeys:&v1074 count:1];
  v1097[10] = v189;
  v1096[11] = @"RB_BeginRollback";
  v1072[0] = v3;
  v1072[1] = v2;
  v1073[0] = @"RB_ReadyToBegin";
  v1073[1] = @"LoadBrainRollback";
  v188 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1073 forKeys:v1072 count:2];
  v1097[11] = v188;
  v1096[12] = @"RB_PerformLoadBrain";
  v1070[0] = v3;
  v1070[1] = v2;
  v1071[0] = @"RB_LoadingBrain";
  v1071[1] = @"LoadBrain";
  v187 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1071 forKeys:v1070 count:2];
  v1097[12] = v187;
  v1096[13] = @"RB_PerformRollbackPrepare";
  v1068[0] = v3;
  v1068[1] = v2;
  v1069[0] = @"RB_RollingBackPrepare";
  v1069[1] = @"RollbackUpdatePrepare";
  v186 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1069 forKeys:v1068 count:2];
  v1097[13] = v186;
  v1096[14] = @"RB_PerformRollbackSuspend";
  v1066[0] = v3;
  v1066[1] = v2;
  v1067[0] = @"RB_RollingBackSuspend";
  v1067[1] = @"RollbackUpdateSuspend";
  v185 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1067 forKeys:v1066 count:2];
  v1097[14] = v185;
  v1096[15] = @"RB_PerformRollbackResume";
  v1064[0] = v3;
  v1064[1] = v2;
  v1065[0] = @"RB_RollingBackResume";
  v1065[1] = @"RollbackUpdateResume";
  v184 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1065 forKeys:v1064 count:2];
  v1097[15] = v184;
  v1096[16] = @"RB_PerformRollbackApply";
  v1062[0] = v3;
  v1062[1] = v2;
  v1063[0] = @"RB_RollingBackApply";
  v1063[1] = @"RollbackUpdateApply";
  v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1063 forKeys:v1062 count:2];
  v1097[16] = v183;
  v1096[17] = @"RB_RollbackAppleSuccess";
  v1060[0] = v3;
  v1060[1] = v2;
  v1061[0] = @"AwaitingReboot";
  v1061[1] = @"ReportRollbackSucceeded";
  v182 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1061 forKeys:v1060 count:2];
  v1097[17] = v182;
  v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1097 forKeys:v1096 count:18];
  v1729[12] = v181;
  v1728[13] = @"Resuming";
  v1058[0] = @"TargetBrainLoaded";
  v1056 = v2;
  v1057 = @"ReportAnomalyAPI";
  v553 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1057 forKeys:&v1056 count:1];
  v1059[0] = v553;
  v1058[1] = @"TargetDownloadPreflighted";
  v1054 = v2;
  v1055 = @"ReportAnomalyAPI";
  v180 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1055 forKeys:&v1054 count:1];
  v1059[1] = v180;
  v1058[2] = @"TargetDownloaded";
  v1052 = v2;
  v1053 = @"ReportAnomalyAPI";
  v179 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1053 forKeys:&v1052 count:1];
  v1059[2] = v179;
  v1058[3] = @"TargetPrepared";
  v1050 = v2;
  v1051 = @"UpdateTarget";
  v178 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1051 forKeys:&v1050 count:1];
  v1059[3] = v178;
  v1058[4] = @"TargetApplied";
  v1048 = v2;
  v1049 = @"ReportAnomalyAPI";
  v177 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1049 forKeys:&v1048 count:1];
  v1059[4] = v177;
  v1058[5] = @"TargetRollback";
  v1046 = v2;
  v1047 = @"DecideCancelBeforeRollback";
  v176 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1047 forKeys:&v1046 count:1];
  v1059[5] = v176;
  v1058[6] = @"ResumeCurrentUpdate";
  v1044 = v2;
  v1045 = @"ReportAnomalyAPI";
  v175 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1045 forKeys:&v1044 count:1];
  v1059[6] = v175;
  v1058[7] = @"CancelCurrentUpdate";
  v1042 = v3;
  v1043 = @"Canceling";
  v174 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1043 forKeys:&v1042 count:1];
  v1059[7] = v174;
  v1058[8] = @"ResumeSuccess";
  v1040 = v2;
  v1041 = @"DecideApplyUpdate";
  v173 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1041 forKeys:&v1040 count:1];
  v1059[8] = v173;
  v1058[9] = @"ResumeFailed";
  v1038[0] = v3;
  v1038[1] = v2;
  v1039[0] = @"Prepared";
  v1039[1] = @"ReportApplyFailed";
  v172 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1039 forKeys:v1038 count:2];
  v1059[9] = v172;
  v1058[10] = @"ResumeSuccessAtTarget";
  v1036[0] = v3;
  v1036[1] = v2;
  v1037[0] = @"Prepared";
  v1037[1] = @"ReportPrepared";
  v561 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1037 forKeys:v1036 count:2];
  v1059[10] = v561;
  v1058[11] = @"PerformApply";
  v1034[0] = v3;
  v1034[1] = v2;
  v1035[0] = @"Applying";
  v1035[1] = @"ApplyUpdate";
  v562 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1035 forKeys:v1034 count:2];
  v1059[11] = v562;
  v1058[12] = @"ApplySuccess";
  v1032[0] = v3;
  v1032[1] = v2;
  v1033[0] = @"AwaitingReboot";
  v1033[1] = @"ReportApplied";
  v555 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1033 forKeys:v1032 count:2];
  v1059[12] = v555;
  v1058[13] = @"RB_CancelNonRollbackUpdate";
  v1030 = v3;
  v1031 = @"RB_Canceling";
  v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1031 forKeys:&v1030 count:1];
  v1059[13] = v171;
  v1058[14] = @"RB_BeginRollback";
  v1028[0] = v3;
  v1028[1] = v2;
  v1029[0] = @"RB_ReadyToBegin";
  v1029[1] = @"LoadBrainRollback";
  v169 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1029 forKeys:v1028 count:2];
  v1059[14] = v169;
  v1058[15] = @"RB_PerformLoadBrain";
  v1026[0] = v3;
  v1026[1] = v2;
  v1027[0] = @"RB_LoadingBrain";
  v1027[1] = @"LoadBrain";
  v168 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1027 forKeys:v1026 count:2];
  v1059[15] = v168;
  v1058[16] = @"RB_PerformRollbackPrepare";
  v1024[0] = v3;
  v1024[1] = v2;
  v1025[0] = @"RB_RollingBackPrepare";
  v1025[1] = @"RollbackUpdatePrepare";
  v167 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1025 forKeys:v1024 count:2];
  v1059[16] = v167;
  v1058[17] = @"RB_PerformRollbackSuspend";
  v1022[0] = v3;
  v1022[1] = v2;
  v1023[0] = @"RB_RollingBackSuspend";
  v1023[1] = @"RollbackUpdateSuspend";
  v166 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1023 forKeys:v1022 count:2];
  v1059[17] = v166;
  v1058[18] = @"RB_PerformRollbackResume";
  v1020[0] = v3;
  v1020[1] = v2;
  v1021[0] = @"RB_RollingBackResume";
  v1021[1] = @"RollbackUpdateResume";
  v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1021 forKeys:v1020 count:2];
  v1059[18] = v165;
  v1058[19] = @"RB_PerformRollbackApply";
  v1018[0] = v3;
  v1018[1] = v2;
  v1019[0] = @"RB_RollingBackApply";
  v1019[1] = @"RollbackUpdateApply";
  v164 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1019 forKeys:v1018 count:2];
  v1059[19] = v164;
  v1058[20] = @"RB_RollbackAppleSuccess";
  v1016[0] = v3;
  v1016[1] = v2;
  v1017[0] = @"AwaitingReboot";
  v1017[1] = @"ReportRollbackSucceeded";
  v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1017 forKeys:v1016 count:2];
  v1059[20] = v163;
  v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1059 forKeys:v1058 count:21];
  v1729[13] = v162;
  v1728[14] = @"Applying";
  v1014[0] = @"TargetBrainLoaded";
  v1012 = v2;
  v1013 = @"ReportAnomalyAPI";
  v552 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1013 forKeys:&v1012 count:1];
  v1015[0] = v552;
  v1014[1] = @"TargetDownloadPreflighted";
  v1010 = v2;
  v1011 = @"ReportAnomalyAPI";
  v161 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1011 forKeys:&v1010 count:1];
  v1015[1] = v161;
  v1014[2] = @"TargetDownloaded";
  v1008 = v2;
  v1009 = @"ReportAnomalyAPI";
  v160 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1009 forKeys:&v1008 count:1];
  v1015[2] = v160;
  v1014[3] = @"TargetPrepared";
  v1006 = v2;
  v1007 = @"ReportAnomalyAPI";
  v159 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1007 forKeys:&v1006 count:1];
  v1015[3] = v159;
  v1014[4] = @"TargetApplied";
  v1004 = v2;
  v1005 = @"ReportAnomalyAPI";
  v158 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1005 forKeys:&v1004 count:1];
  v1015[4] = v158;
  v1014[5] = @"TargetRollback";
  v1002 = v2;
  v1003 = @"ReportAnomalyAPI";
  v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1003 forKeys:&v1002 count:1];
  v1015[5] = v157;
  v1014[6] = @"ResumeCurrentUpdate";
  v1000 = v2;
  v1001 = @"ReportAnomalyAPI";
  v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v1001 forKeys:&v1000 count:1];
  v1015[6] = v156;
  v1014[7] = @"CancelCurrentUpdate";
  v998 = v2;
  v999 = @"ReportAnomalyAPI";
  v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v999 forKeys:&v998 count:1];
  v1015[7] = v155;
  v1014[8] = @"ApplyProgress";
  v996 = v2;
  v997 = @"ReportApplyProgress";
  v154 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v997 forKeys:&v996 count:1];
  v1015[8] = v154;
  v1014[9] = @"ApplySuccess";
  v994[0] = v3;
  v994[1] = v2;
  v995[0] = @"AwaitingReboot";
  v995[1] = @"ReportApplied";
  v560 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v995 forKeys:v994 count:2];
  v1015[9] = v560;
  v1014[10] = @"ApplyFailed";
  v992[0] = v3;
  v992[1] = v2;
  v993[0] = @"Prepared";
  v993[1] = @"ReportApplyFailed";
  v559 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v993 forKeys:v992 count:2];
  v1015[10] = v559;
  v550 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1015 forKeys:v1014 count:11];
  v1729[14] = v550;
  v1728[15] = @"AwaitingReboot";
  v990[0] = @"TargetBrainLoaded";
  v988 = v2;
  v989 = @"ReportAnomalyAPIEnd";
  v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v989 forKeys:&v988 count:1];
  v991[0] = v153;
  v990[1] = @"TargetDownloadPreflighted";
  v986 = v2;
  v987 = @"ReportAnomalyAPIEnd";
  v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v987 forKeys:&v986 count:1];
  v991[1] = v152;
  v990[2] = @"TargetDownloaded";
  v984 = v2;
  v985 = @"ReportAnomalyAPIEnd";
  v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v985 forKeys:&v984 count:1];
  v991[2] = v151;
  v990[3] = @"TargetPrepared";
  v982 = v2;
  v983 = @"ReportAnomalyAPIEnd";
  v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v983 forKeys:&v982 count:1];
  v991[3] = v150;
  v990[4] = @"TargetApplied";
  v980 = v2;
  v981 = @"ReportAnomalyAPIEnd";
  v149 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v981 forKeys:&v980 count:1];
  v991[4] = v149;
  v990[5] = @"TargetRollback";
  v978 = v2;
  v979 = @"ReportAnomalyAPIEnd";
  v148 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v979 forKeys:&v978 count:1];
  v991[5] = v148;
  v990[6] = @"ResumeCurrentUpdate";
  v976 = v2;
  v977 = @"ReportAnomalyAPIEnd";
  v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v977 forKeys:&v976 count:1];
  v991[6] = v147;
  v990[7] = @"CancelCurrentUpdate";
  v974 = v2;
  v975 = @"ReportAnomalyAPIEnd";
  v531 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v975 forKeys:&v974 count:1];
  v991[7] = v531;
  v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v991 forKeys:v990 count:8];
  v1729[15] = v146;
  v1728[16] = @"RemovingSU";
  v972[0] = @"TargetBrainLoaded";
  v970 = v2;
  v971 = @"ReportAnomalyAPI";
  v539 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v971 forKeys:&v970 count:1];
  v973[0] = v539;
  v972[1] = @"TargetDownloadPreflighted";
  v968 = v2;
  v969 = @"ReportAnomalyAPI";
  v145 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v969 forKeys:&v968 count:1];
  v973[1] = v145;
  v972[2] = @"TargetDownloaded";
  v966 = v2;
  v967 = @"ReportAnomalyAPI";
  v144 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v967 forKeys:&v966 count:1];
  v973[2] = v144;
  v972[3] = @"TargetPrepared";
  v964 = v2;
  v965 = @"ReportAnomalyAPI";
  v143 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v965 forKeys:&v964 count:1];
  v973[3] = v143;
  v972[4] = @"TargetApplied";
  v962 = v2;
  v963 = v536;
  v142 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v963 forKeys:&v962 count:1];
  v973[4] = v142;
  v972[5] = @"TargetRollback";
  v960 = v3;
  v961 = @"RB_Canceling";
  v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v961 forKeys:&v960 count:1];
  v973[5] = v141;
  v972[6] = @"ResumeCurrentUpdate";
  v958 = v2;
  v959 = @"ReportAnomalyAPI";
  v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v959 forKeys:&v958 count:1];
  v973[6] = v140;
  v972[7] = @"CancelCurrentUpdate";
  v956 = v3;
  v957 = @"Canceling";
  v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v957 forKeys:&v956 count:1];
  v973[7] = v139;
  v972[8] = @"SURemoved";
  v954 = v2;
  v955 = @"ChooseErrorSpaceCheck";
  v529 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v955 forKeys:&v954 count:1];
  v973[8] = v529;
  v972[9] = @"PerformErrorSpaceCheck";
  v952[0] = v3;
  v952[1] = v2;
  v953[0] = @"CheckingSpaceAfterError";
  v953[1] = @"CheckSpace";
  v535 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v953 forKeys:v952 count:2];
  v973[9] = v535;
  v972[10] = @"SkipErrorSpaceCheck";
  v950[0] = v3;
  v950[1] = v2;
  v951[0] = @"ReadyToBegin";
  v951[1] = @"ReportAttemptFailure";
  v528 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v951 forKeys:v950 count:2];
  v973[10] = v528;
  v520 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v973 forKeys:v972 count:11];
  v1729[16] = v520;
  v1728[17] = @"CheckingSpaceAfterError";
  v948[0] = @"TargetBrainLoaded";
  v946 = v2;
  v947 = v536;
  v530 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v947 forKeys:&v946 count:1];
  v949[0] = v530;
  v948[1] = @"TargetDownloadPreflighted";
  v944 = v2;
  v945 = v536;
  v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v945 forKeys:&v944 count:1];
  v949[1] = v138;
  v948[2] = @"TargetDownloaded";
  v942 = v2;
  v943 = v536;
  v137 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v943 forKeys:&v942 count:1];
  v949[2] = v137;
  v948[3] = @"TargetPrepared";
  v940 = v2;
  v941 = v536;
  v136 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v941 forKeys:&v940 count:1];
  v949[3] = v136;
  v948[4] = @"TargetApplied";
  v938 = v2;
  v939 = v536;
  v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v939 forKeys:&v938 count:1];
  v949[4] = v135;
  v948[5] = @"TargetRollback";
  v936 = v2;
  v937 = @"DecideCancelBeforeRollback";
  v544 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v937 forKeys:&v936 count:1];
  v949[5] = v544;
  v948[6] = @"ResumeCurrentUpdate";
  v934 = v2;
  v935 = @"ReportAnomalyAPI";
  v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v935 forKeys:&v934 count:1];
  v949[6] = v134;
  v948[7] = @"CancelCurrentUpdate";
  v932 = v3;
  v933 = @"Canceling";
  v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v933 forKeys:&v932 count:1];
  v949[7] = v133;
  v948[8] = @"SpaceCheckHaveSpace";
  v930[0] = v3;
  v930[1] = v2;
  v931[0] = @"ReadyToBegin";
  v931[1] = @"ReportAttemptFailure";
  v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v931 forKeys:v930 count:2];
  v949[8] = v132;
  v948[9] = @"SpaceCheckNoSpace";
  v928[0] = v3;
  v928[1] = v2;
  v929[0] = @"ReadyToBegin";
  v929[1] = @"ReportAttemptFailure";
  v131 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v929 forKeys:v928 count:2];
  v949[9] = v131;
  v948[10] = @"SpaceCheckFailed";
  v926[0] = v3;
  v926[1] = v2;
  v927[0] = @"ReadyToBegin";
  v927[1] = @"ReportAttemptFailure";
  v534 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v927 forKeys:v926 count:2];
  v949[10] = v534;
  v948[11] = @"RB_CancelNonRollbackUpdate";
  v924 = v3;
  v925 = @"RB_Canceling";
  v545 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v925 forKeys:&v924 count:1];
  v949[11] = v545;
  v948[12] = @"RB_BeginRollback";
  v922[0] = v3;
  v922[1] = v2;
  v923[0] = @"RB_ReadyToBegin";
  v923[1] = @"LoadBrainRollback";
  v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v923 forKeys:v922 count:2];
  v949[12] = v130;
  v948[13] = @"RB_PerformLoadBrain";
  v920[0] = v3;
  v920[1] = v2;
  v921[0] = @"RB_LoadingBrain";
  v921[1] = @"LoadBrain";
  v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v921 forKeys:v920 count:2];
  v949[13] = v129;
  v948[14] = @"RB_PerformRollbackPrepare";
  v918[0] = v3;
  v918[1] = v2;
  v919[0] = @"RB_RollingBackPrepare";
  v919[1] = @"RollbackUpdatePrepare";
  v128 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v919 forKeys:v918 count:2];
  v949[14] = v128;
  v948[15] = @"RB_PerformRollbackSuspend";
  v916[0] = v3;
  v916[1] = v2;
  v917[0] = @"RB_RollingBackSuspend";
  v917[1] = @"RollbackUpdateSuspend";
  v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v917 forKeys:v916 count:2];
  v949[15] = v127;
  v948[16] = @"RB_PerformRollbackResume";
  v914[0] = v3;
  v914[1] = v2;
  v915[0] = @"RB_RollingBackResume";
  v915[1] = @"RollbackUpdateResume";
  v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v915 forKeys:v914 count:2];
  v949[16] = v126;
  v948[17] = @"RB_PerformRollbackApply";
  v912[0] = v3;
  v912[1] = v2;
  v913[0] = @"RB_RollingBackApply";
  v913[1] = @"RollbackUpdateApply";
  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v913 forKeys:v912 count:2];
  v949[17] = v125;
  v948[18] = @"RB_RollbackAppleSuccess";
  v910[0] = v3;
  v910[1] = v2;
  v911[0] = @"AwaitingReboot";
  v911[1] = @"ReportRollbackSucceeded";
  v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v911 forKeys:v910 count:2];
  v949[18] = v124;
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v949 forKeys:v948 count:19];
  v1729[17] = v123;
  v1728[18] = @"Canceling";
  v908[0] = @"TargetBrainLoaded";
  v906 = v2;
  v907 = @"ReportAnomalyAPI";
  v554 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v907 forKeys:&v906 count:1];
  v909[0] = v554;
  v908[1] = @"TargetDownloadPreflighted";
  v904 = v2;
  v905 = @"ReportAnomalyAPI";
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v905 forKeys:&v904 count:1];
  v909[1] = v122;
  v908[2] = @"TargetDownloaded";
  v902 = v2;
  v903 = @"ReportAnomalyAPI";
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v903 forKeys:&v902 count:1];
  v909[2] = v121;
  v908[3] = @"TargetPrepared";
  v900 = v2;
  v901 = @"ReportAnomalyAPI";
  v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v901 forKeys:&v900 count:1];
  v909[3] = v120;
  v908[4] = @"TargetApplied";
  v898 = v2;
  v899 = @"ReportAnomalyAPI";
  v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v899 forKeys:&v898 count:1];
  v909[4] = v119;
  v908[5] = @"TargetRollback";
  v896 = v3;
  v897 = @"RB_Canceling";
  v118 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v897 forKeys:&v896 count:1];
  v909[5] = v118;
  v908[6] = @"ResumeCurrentUpdate";
  v894 = v2;
  v895 = @"ReportAnomalyAPI";
  v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v895 forKeys:&v894 count:1];
  v909[6] = v117;
  v908[7] = @"CancelCurrentUpdate";
  v892 = v2;
  v893 = @"ReportAnomalyAPI";
  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v893 forKeys:&v892 count:1];
  v909[7] = v116;
  v908[8] = @"BrainLoadProgress";
  v890 = v2;
  v891 = v536;
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v891 forKeys:&v890 count:1];
  v909[8] = v115;
  v908[9] = @"BrainLoadSuccess";
  v888[0] = v3;
  v888[1] = v2;
  v889[0] = @"ReadyToBegin";
  v889[1] = @"ReportCanceled";
  v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v889 forKeys:v888 count:2];
  v909[9] = v114;
  v908[10] = @"BrainLoadFailed";
  v886[0] = v3;
  v886[1] = v2;
  v887[0] = @"ReadyToBegin";
  v887[1] = @"ReportCanceled";
  v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v887 forKeys:v886 count:2];
  v909[10] = v113;
  v908[11] = @"PreflightSuccess";
  v884[0] = v3;
  v884[1] = v2;
  v885[0] = @"ReadyToBegin";
  v885[1] = @"ReportCanceled";
  v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v885 forKeys:v884 count:2];
  v909[11] = v112;
  v908[12] = @"PreflightFailed";
  v882[0] = v3;
  v882[1] = v2;
  v883[0] = @"ReadyToBegin";
  v883[1] = @"ReportCanceled";
  v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v883 forKeys:v882 count:2];
  v909[12] = v111;
  v908[13] = @"PrepareProgress";
  v880 = v2;
  v881 = v536;
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v881 forKeys:&v880 count:1];
  v909[13] = v110;
  v908[14] = @"PrepareSuccess";
  v878 = v2;
  v879 = @"RemovePrepared";
  v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v879 forKeys:&v878 count:1];
  v909[14] = v109;
  v908[15] = @"PrepareFailed";
  v876 = v2;
  v877 = @"RemoveSU";
  v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v877 forKeys:&v876 count:1];
  v909[15] = v108;
  v908[16] = @"SuspendSuccess";
  v874 = v2;
  v875 = @"RemovePrepared";
  v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v875 forKeys:&v874 count:1];
  v909[16] = v107;
  v908[17] = @"SuspendFailed";
  v872 = v2;
  v873 = @"RemovePrepared";
  v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v873 forKeys:&v872 count:1];
  v909[17] = v106;
  v908[18] = @"ResumeSuccess";
  v870 = v2;
  v871 = @"RemovePrepared";
  v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v871 forKeys:&v870 count:1];
  v909[18] = v105;
  v908[19] = @"ResumeFailed";
  v868 = v2;
  v869 = @"RemovePrepared";
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v869 forKeys:&v868 count:1];
  v909[19] = v104;
  v908[20] = @"PrepareRemoved";
  v866 = v2;
  v867 = @"RemoveSU";
  v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v867 forKeys:&v866 count:1];
  v909[20] = v103;
  v908[21] = @"DownloadProgress";
  v864 = v2;
  v865 = v536;
  v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v865 forKeys:&v864 count:1];
  v909[21] = v102;
  v908[22] = @"DownloadStalled";
  v862 = v2;
  v863 = v536;
  v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v863 forKeys:&v862 count:1];
  v909[22] = v101;
  v908[23] = @"DownloadSuccess";
  v860 = v2;
  v861 = v536;
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v861 forKeys:&v860 count:1];
  v909[23] = v100;
  v908[24] = @"DownloadFailed";
  v858 = v2;
  v859 = v536;
  v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v859 forKeys:&v858 count:1];
  v909[24] = v99;
  v908[25] = @"SURemoved";
  v856[0] = v3;
  v856[1] = v2;
  v857[0] = @"ReadyToBegin";
  v857[1] = @"ReportCanceled";
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v857 forKeys:v856 count:2];
  v909[25] = v98;
  v908[26] = @"SpaceCheckHaveSpace";
  v854[0] = v3;
  v854[1] = v2;
  v855[0] = @"ReadyToBegin";
  v855[1] = @"ReportCanceled";
  v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v855 forKeys:v854 count:2];
  v909[26] = v97;
  v908[27] = @"SpaceCheckNoSpace";
  v852[0] = v3;
  v852[1] = v2;
  v853[0] = @"ReadyToBegin";
  v853[1] = @"ReportCanceled";
  v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v853 forKeys:v852 count:2];
  v909[27] = v96;
  v908[28] = @"SpaceCheckFailed";
  v850[0] = v3;
  v850[1] = v2;
  v851[0] = @"ReadyToBegin";
  v851[1] = @"ReportCanceled";
  v525 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v851 forKeys:v850 count:2];
  v909[28] = v525;
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v909 forKeys:v908 count:29];
  v1729[18] = v95;
  v1728[19] = @"RB_Canceling";
  v848[0] = @"TargetBrainLoaded";
  v846 = v2;
  v847 = @"ReportAnomalyAPI";
  v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v847 forKeys:&v846 count:1];
  v849[0] = v94;
  v848[1] = @"TargetDownloadPreflighted";
  v844 = v2;
  v845 = @"ReportAnomalyAPI";
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v845 forKeys:&v844 count:1];
  v849[1] = v93;
  v848[2] = @"TargetDownloaded";
  v842 = v2;
  v843 = @"ReportAnomalyAPI";
  v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v843 forKeys:&v842 count:1];
  v849[2] = v92;
  v848[3] = @"TargetPrepared";
  v840 = v2;
  v841 = @"ReportAnomalyAPI";
  v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v841 forKeys:&v840 count:1];
  v849[3] = v91;
  v848[4] = @"TargetApplied";
  v838 = v2;
  v839 = @"ReportAnomalyAPI";
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v839 forKeys:&v838 count:1];
  v849[4] = v90;
  v848[5] = @"TargetRollback";
  v836 = v2;
  v837 = @"ReportAnomalyAPI";
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v837 forKeys:&v836 count:1];
  v849[5] = v89;
  v848[6] = @"ResumeCurrentUpdate";
  v834 = v2;
  v835 = @"ReportAnomalyAPI";
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v835 forKeys:&v834 count:1];
  v849[6] = v88;
  v848[7] = @"CancelCurrentUpdate";
  v832 = v2;
  v833 = @"ReportAnomalyAPI";
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v833 forKeys:&v832 count:1];
  v849[7] = v87;
  v848[8] = @"BrainLoadProgress";
  v830 = v2;
  v831 = v536;
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v831 forKeys:&v830 count:1];
  v849[8] = v86;
  v848[9] = @"BrainLoadSuccess";
  v828[0] = v3;
  v828[1] = v2;
  v829[0] = @"RB_ReadyToBegin";
  v829[1] = @"LoadBrainRollback";
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v829 forKeys:v828 count:2];
  v849[9] = v85;
  v848[10] = @"BrainLoadFailed";
  v826[0] = v3;
  v826[1] = v2;
  v827[0] = @"RB_ReadyToBegin";
  v827[1] = @"LoadBrainRollback";
  v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v827 forKeys:v826 count:2];
  v849[10] = v84;
  v848[11] = @"PreflightSuccess";
  v824[0] = v3;
  v824[1] = v2;
  v825[0] = @"RB_ReadyToBegin";
  v825[1] = @"LoadBrainRollback";
  v516 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v825 forKeys:v824 count:2];
  v849[11] = v516;
  v848[12] = @"PreflightFailed";
  v822[0] = v3;
  v822[1] = v2;
  v823[0] = @"RB_ReadyToBegin";
  v823[1] = @"LoadBrainRollback";
  v517 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v823 forKeys:v822 count:2];
  v849[12] = v517;
  v848[13] = @"PrepareProgress";
  v820 = v2;
  v821 = v536;
  v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v821 forKeys:&v820 count:1];
  v849[13] = v83;
  v848[14] = @"PrepareSuccess";
  v818 = v2;
  v819 = @"RemovePrepared";
  v541 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v819 forKeys:&v818 count:1];
  v849[14] = v541;
  v848[15] = @"PrepareFailed";
  v816 = v2;
  v817 = @"RemoveSU";
  v540 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v817 forKeys:&v816 count:1];
  v849[15] = v540;
  v848[16] = @"SuspendSuccess";
  v814 = v2;
  v815 = @"RemovePrepared";
  v547 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v815 forKeys:&v814 count:1];
  v849[16] = v547;
  v848[17] = @"SuspendFailed";
  v812 = v2;
  v813 = @"RemovePrepared";
  v546 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v813 forKeys:&v812 count:1];
  v849[17] = v546;
  v848[18] = @"ResumeSuccess";
  v810 = v2;
  v811 = @"RemovePrepared";
  v551 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v811 forKeys:&v810 count:1];
  v849[18] = v551;
  v848[19] = @"ResumeFailed";
  v808 = v2;
  v809 = @"RemovePrepared";
  v549 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v809 forKeys:&v808 count:1];
  v849[19] = v549;
  v848[20] = @"PrepareRemoved";
  v806 = v2;
  v807 = @"RemoveSU";
  v548 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v807 forKeys:&v806 count:1];
  v849[20] = v548;
  v848[21] = @"DownloadProgress";
  v804 = v2;
  v805 = v536;
  v533 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v805 forKeys:&v804 count:1];
  v849[21] = v533;
  v848[22] = @"DownloadStalled";
  v802 = v2;
  v803 = v536;
  v532 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v803 forKeys:&v802 count:1];
  v849[22] = v532;
  v848[23] = @"DownloadSuccess";
  v800 = v2;
  v801 = v536;
  v522 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v801 forKeys:&v800 count:1];
  v849[23] = v522;
  v848[24] = @"DownloadFailed";
  v798 = v2;
  v799 = v536;
  v537 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v799 forKeys:&v798 count:1];
  v849[24] = v537;
  v848[25] = @"SpaceCheckHaveSpace";
  v796 = v2;
  v797 = @"DecideBeginRollback";
  v521 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v797 forKeys:&v796 count:1];
  v849[25] = v521;
  v848[26] = @"SpaceCheckNoSpace";
  v794 = v2;
  v795 = @"DecideBeginRollback";
  v526 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v795 forKeys:&v794 count:1];
  v849[26] = v526;
  v848[27] = @"SpaceCheckFailed";
  v792 = v2;
  v793 = @"DecideBeginRollback";
  v527 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v793 forKeys:&v792 count:1];
  v849[27] = v527;
  v848[28] = @"SURemoved";
  v790 = v2;
  v791 = @"DecideBeginRollback";
  v563 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v791 forKeys:&v790 count:1];
  v849[28] = v563;
  v848[29] = @"RB_BeginRollback";
  v788[0] = v3;
  v788[1] = v2;
  v789[0] = @"RB_ReadyToBegin";
  v789[1] = @"LoadBrainRollback";
  v558 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v789 forKeys:v788 count:2];
  v849[29] = v558;
  v848[30] = @"RB_PerformLoadBrain";
  v786[0] = v3;
  v786[1] = v2;
  v787[0] = @"RB_LoadingBrain";
  v787[1] = @"LoadBrain";
  v519 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v787 forKeys:v786 count:2];
  v849[30] = v519;
  v848[31] = @"RB_PerformRollbackPrepare";
  v784[0] = v3;
  v784[1] = v2;
  v785[0] = @"RB_RollingBackPrepare";
  v785[1] = @"RollbackUpdatePrepare";
  v515 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v785 forKeys:v784 count:2];
  v849[31] = v515;
  v848[32] = @"RB_PerformRollbackSuspend";
  v782[0] = v3;
  v782[1] = v2;
  v783[0] = @"RB_RollingBackSuspend";
  v783[1] = @"RollbackUpdateSuspend";
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v783 forKeys:v782 count:2];
  v849[32] = v82;
  v848[33] = @"RB_PerformRollbackResume";
  v780[0] = v3;
  v780[1] = v2;
  v781[0] = @"RB_RollingBackResume";
  v781[1] = @"RollbackUpdateResume";
  v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v781 forKeys:v780 count:2];
  v849[33] = v81;
  v848[34] = @"RB_PerformRollbackApply";
  v778[0] = v3;
  v778[1] = v2;
  v779[0] = @"RB_RollingBackApply";
  v779[1] = @"RollbackUpdateApply";
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v779 forKeys:v778 count:2];
  v849[34] = v80;
  v848[35] = @"RB_RollbackAppleSuccess";
  v776[0] = v3;
  v776[1] = v2;
  v777[0] = @"AwaitingReboot";
  v777[1] = @"ReportRollbackSucceeded";
  v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v777 forKeys:v776 count:2];
  v849[35] = v79;
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v849 forKeys:v848 count:36];
  v1729[19] = v78;
  v1728[20] = @"RB_ReadyToBegin";
  v774[0] = @"TargetBrainLoaded";
  v772 = v2;
  v773 = @"ReportAnomalyAPI";
  v557 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v773 forKeys:&v772 count:1];
  v775[0] = v557;
  v774[1] = @"TargetDownloadPreflighted";
  v770 = v2;
  v771 = @"ReportAnomalyAPI";
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v771 forKeys:&v770 count:1];
  v775[1] = v77;
  v774[2] = @"TargetDownloaded";
  v768 = v2;
  v769 = @"ReportAnomalyAPI";
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v769 forKeys:&v768 count:1];
  v775[2] = v76;
  v774[3] = @"TargetPrepared";
  v766 = v2;
  v767 = @"ReportAnomalyAPI";
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v767 forKeys:&v766 count:1];
  v775[3] = v75;
  v774[4] = @"TargetApplied";
  v764 = v2;
  v765 = @"ReportAnomalyAPI";
  v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v765 forKeys:&v764 count:1];
  v775[4] = v74;
  v774[5] = @"TargetRollback";
  v762 = v2;
  v763 = @"LoadBrainRollback";
  v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v763 forKeys:&v762 count:1];
  v775[5] = v73;
  v774[6] = @"ResumeCurrentUpdate";
  v760 = v2;
  v761 = @"ReportAnomalyAPI";
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v761 forKeys:&v760 count:1];
  v775[6] = v72;
  v774[7] = @"CancelCurrentUpdate";
  v758 = v2;
  v759 = @"ReportAnomalyAPI";
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v759 forKeys:&v758 count:1];
  v775[7] = v71;
  v774[8] = @"RB_PerformLoadBrain";
  v756[0] = v3;
  v756[1] = v2;
  v757[0] = @"RB_LoadingBrain";
  v757[1] = @"LoadBrain";
  v565 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v757 forKeys:v756 count:2];
  v775[8] = v565;
  v774[9] = @"RB_PerformRollbackPrepare";
  v754[0] = v3;
  v754[1] = v2;
  v755[0] = @"RB_RollingBackPrepare";
  v755[1] = @"RollbackUpdatePrepare";
  v564 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v755 forKeys:v754 count:2];
  v775[9] = v564;
  v774[10] = @"RB_PerformRollbackSuspend";
  v752[0] = v3;
  v752[1] = v2;
  v753[0] = @"RB_RollingBackSuspend";
  v753[1] = @"RollbackUpdateSuspend";
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v753 forKeys:v752 count:2];
  v775[10] = v70;
  v774[11] = @"RB_PerformRollbackResume";
  v750[0] = v3;
  v750[1] = v2;
  v751[0] = @"RB_RollingBackResume";
  v751[1] = @"RollbackUpdateResume";
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v751 forKeys:v750 count:2];
  v775[11] = v69;
  v774[12] = @"RB_PerformRollbackApply";
  v748[0] = v3;
  v748[1] = v2;
  v749[0] = @"RB_RollingBackApply";
  v749[1] = @"RollbackUpdateApply";
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v749 forKeys:v748 count:2];
  v775[12] = v68;
  v774[13] = @"RB_RollbackAppleSuccess";
  v746[0] = v3;
  v746[1] = v2;
  v747[0] = @"AwaitingReboot";
  v747[1] = @"ReportRollbackSucceeded";
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v747 forKeys:v746 count:2];
  v775[13] = v67;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v775 forKeys:v774 count:14];
  v1729[20] = v66;
  v1728[21] = @"RB_LoadingBrain";
  v744[0] = @"TargetBrainLoaded";
  v742 = v2;
  v743 = @"ReportAnomalyAPI";
  v556 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v743 forKeys:&v742 count:1];
  v745[0] = v556;
  v744[1] = @"TargetDownloadPreflighted";
  v740 = v2;
  v741 = @"ReportAnomalyAPI";
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v741 forKeys:&v740 count:1];
  v745[1] = v65;
  v744[2] = @"TargetDownloaded";
  v738 = v2;
  v739 = @"ReportAnomalyAPI";
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v739 forKeys:&v738 count:1];
  v745[2] = v64;
  v744[3] = @"TargetPrepared";
  v736 = v2;
  v737 = @"ReportAnomalyAPI";
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v737 forKeys:&v736 count:1];
  v745[3] = v63;
  v744[4] = @"TargetApplied";
  v734 = v2;
  v735 = @"ReportAnomalyAPI";
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v735 forKeys:&v734 count:1];
  v745[4] = v62;
  v744[5] = @"TargetRollback";
  v732 = v2;
  v733 = @"ReportAnomalyAPI";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v733 forKeys:&v732 count:1];
  v745[5] = v61;
  v744[6] = @"ResumeCurrentUpdate";
  v730 = v2;
  v731 = @"ReportAnomalyAPI";
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v731 forKeys:&v730 count:1];
  v745[6] = v60;
  v744[7] = @"CancelCurrentUpdate";
  v728 = v3;
  v729 = @"RB_Canceling";
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v729 forKeys:&v728 count:1];
  v745[7] = v59;
  v744[8] = @"BrainLoadProgress";
  v726 = v2;
  v727 = @"ReportBrainLoadProgress";
  v524 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v727 forKeys:&v726 count:1];
  v745[8] = v524;
  v744[9] = @"BrainLoadSuccess";
  v724[0] = v3;
  v724[1] = v2;
  v725[0] = @"RB_BrainLoaded";
  v725[1] = @"DecideRollbackUpdate";
  v518 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v725 forKeys:v724 count:2];
  v745[9] = v518;
  v744[10] = @"BrainLoadFailed";
  v722[0] = v3;
  v722[1] = v2;
  v723[0] = @"ReadyToBegin";
  v723[1] = @"ReportRollbackFailed";
  v523 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v723 forKeys:v722 count:2];
  v745[10] = v523;
  v322 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v745 forKeys:v744 count:11];
  v1729[21] = v322;
  v1728[22] = @"RB_BrainLoaded";
  v720[0] = @"TargetBrainLoaded";
  v718 = v2;
  v719 = @"ReportAnomalyAPI";
  v302 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v719 forKeys:&v718 count:1];
  v721[0] = v302;
  v720[1] = @"TargetDownloadPreflighted";
  v716 = v2;
  v717 = @"ReportAnomalyAPI";
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v717 forKeys:&v716 count:1];
  v721[1] = v58;
  v720[2] = @"TargetDownloaded";
  v714 = v2;
  v715 = @"ReportAnomalyAPI";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v715 forKeys:&v714 count:1];
  v721[2] = v57;
  v720[3] = @"TargetPrepared";
  v712 = v2;
  v713 = @"ReportAnomalyAPI";
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v713 forKeys:&v712 count:1];
  v721[3] = v56;
  v720[4] = @"TargetApplied";
  v710 = v2;
  v711 = @"ReportAnomalyAPI";
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v711 forKeys:&v710 count:1];
  v721[4] = v55;
  v720[5] = @"TargetRollback";
  v708 = v2;
  v709 = @"UpdateTarget";
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v709 forKeys:&v708 count:1];
  v721[5] = v54;
  v720[6] = @"ResumeCurrentUpdate";
  v706 = v2;
  v707 = @"ReportAnomalyAPI";
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v707 forKeys:&v706 count:1];
  v721[6] = v53;
  v720[7] = @"CancelCurrentUpdate";
  v704[0] = v3;
  v704[1] = v2;
  v705[0] = @"RB_Canceling";
  v705[1] = @"RemoveSU";
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v705 forKeys:v704 count:2];
  v721[7] = v52;
  v720[8] = @"RB_PerformRollbackPrepare";
  v702[0] = v3;
  v702[1] = v2;
  v703[0] = @"RB_RollingBackPrepare";
  v703[1] = @"RollbackUpdatePrepare";
  v567 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v703 forKeys:v702 count:2];
  v721[8] = v567;
  v720[9] = @"RB_PerformRollbackSuspend";
  v700[0] = v3;
  v700[1] = v2;
  v701[0] = @"RB_RollingBackSuspend";
  v701[1] = @"RollbackUpdateSuspend";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v701 forKeys:v700 count:2];
  v721[9] = v51;
  v720[10] = @"RB_PerformRollbackResume";
  v698[0] = v3;
  v698[1] = v2;
  v699[0] = @"RB_RollingBackResume";
  v699[1] = @"RollbackUpdateResume";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v699 forKeys:v698 count:2];
  v721[10] = v50;
  v720[11] = @"RB_PerformRollbackApply";
  v696[0] = v3;
  v696[1] = v2;
  v697[0] = @"RB_RollingBackApply";
  v697[1] = @"RollbackUpdateApply";
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v697 forKeys:v696 count:2];
  v721[11] = v49;
  v720[12] = @"RB_RollbackAppleSuccess";
  v694[0] = v3;
  v694[1] = v2;
  v695[0] = @"AwaitingReboot";
  v695[1] = @"ReportRollbackSucceeded";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v695 forKeys:v694 count:2];
  v721[12] = v48;
  v720[13] = @"RB_RollbackFailed";
  v692[0] = v3;
  v692[1] = v2;
  v693[0] = @"ReadyToBegin";
  v693[1] = @"ReportRollbackFailed";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v693 forKeys:v692 count:2];
  v721[13] = v47;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v721 forKeys:v720 count:14];
  v1729[22] = v46;
  v1728[23] = @"RB_RollingBackPrepare";
  v690[0] = @"TargetBrainLoaded";
  v688 = v2;
  v689 = @"ReportAnomalyAPI";
  v566 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v689 forKeys:&v688 count:1];
  v691[0] = v566;
  v690[1] = @"TargetDownloadPreflighted";
  v686 = v2;
  v687 = @"ReportAnomalyAPI";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v687 forKeys:&v686 count:1];
  v691[1] = v45;
  v690[2] = @"TargetDownloaded";
  v684 = v2;
  v685 = @"ReportAnomalyAPI";
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v685 forKeys:&v684 count:1];
  v691[2] = v44;
  v690[3] = @"TargetPrepared";
  v682 = v2;
  v683 = @"ReportAnomalyAPI";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v683 forKeys:&v682 count:1];
  v691[3] = v43;
  v690[4] = @"TargetApplied";
  v680 = v2;
  v681 = @"ReportAnomalyAPI";
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v681 forKeys:&v680 count:1];
  v691[4] = v42;
  v690[5] = @"TargetRollback";
  v678 = v2;
  v679 = @"UpdateTarget";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v679 forKeys:&v678 count:1];
  v691[5] = v41;
  v690[6] = @"ResumeCurrentUpdate";
  v676 = v2;
  v677 = @"ReportAnomalyAPI";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v677 forKeys:&v676 count:1];
  v691[6] = v40;
  v690[7] = @"CancelCurrentUpdate";
  v674[0] = v3;
  v674[1] = v2;
  v675[0] = @"RB_Canceling";
  v675[1] = @"RemoveSU";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v675 forKeys:v674 count:2];
  v691[7] = v39;
  v690[8] = @"PrepareProgress";
  v672 = v2;
  v673 = @"ReportPrepareProgress";
  v543 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v673 forKeys:&v672 count:1];
  v691[8] = v543;
  v690[9] = @"RB_RollbackPrepareSuccess";
  v670 = v2;
  v671 = @"RollbackUpdateDecideSuspend";
  v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v671 forKeys:&v670 count:1];
  v691[9] = v170;
  v690[10] = @"RB_PerformRollbackSuspend";
  v668[0] = v3;
  v668[1] = v2;
  v669[0] = @"RB_RollingBackSuspend";
  v669[1] = @"RollbackUpdateSuspend";
  v569 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v669 forKeys:v668 count:2];
  v691[10] = v569;
  v690[11] = @"RB_PerformRollbackResume";
  v666[0] = v3;
  v666[1] = v2;
  v667[0] = @"RB_RollingBackResume";
  v667[1] = @"RollbackUpdateResume";
  v568 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v667 forKeys:v666 count:2];
  v691[11] = v568;
  v690[12] = @"RB_PerformRollbackApply";
  v664[0] = v3;
  v664[1] = v2;
  v665[0] = @"RB_RollingBackApply";
  v665[1] = @"RollbackUpdateApply";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v665 forKeys:v664 count:2];
  v691[12] = v38;
  v690[13] = @"RB_RollbackAppleSuccess";
  v662[0] = v3;
  v662[1] = v2;
  v663[0] = @"AwaitingReboot";
  v663[1] = @"ReportRollbackSucceeded";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v663 forKeys:v662 count:2];
  v691[13] = v37;
  v690[14] = @"RB_RollbackFailed";
  v660[0] = v3;
  v660[1] = v2;
  v661[0] = @"ReadyToBegin";
  v661[1] = @"ReportRollbackFailed";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v661 forKeys:v660 count:2];
  v691[14] = v36;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v691 forKeys:v690 count:15];
  v1729[23] = v35;
  v1728[24] = @"RB_RollingBackSuspend";
  v658[0] = @"TargetBrainLoaded";
  v656 = v2;
  v657 = @"ReportAnomalyAPI";
  v571 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v657 forKeys:&v656 count:1];
  v659[0] = v571;
  v658[1] = @"TargetDownloadPreflighted";
  v654 = v2;
  v655 = @"ReportAnomalyAPI";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v655 forKeys:&v654 count:1];
  v659[1] = v34;
  v658[2] = @"TargetDownloaded";
  v652 = v2;
  v653 = @"ReportAnomalyAPI";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v653 forKeys:&v652 count:1];
  v659[2] = v33;
  v658[3] = @"TargetPrepared";
  v650 = v2;
  v651 = @"ReportAnomalyAPI";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v651 forKeys:&v650 count:1];
  v659[3] = v32;
  v658[4] = @"TargetApplied";
  v648 = v2;
  v649 = @"ReportAnomalyAPI";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v649 forKeys:&v648 count:1];
  v659[4] = v31;
  v658[5] = @"TargetRollback";
  v646 = v2;
  v647 = @"UpdateTarget";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v647 forKeys:&v646 count:1];
  v659[5] = v30;
  v658[6] = @"ResumeCurrentUpdate";
  v644 = v2;
  v645 = @"ReportAnomalyAPI";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v645 forKeys:&v644 count:1];
  v659[6] = v29;
  v658[7] = @"CancelCurrentUpdate";
  v642[0] = v3;
  v642[1] = v2;
  v643[0] = @"RB_Canceling";
  v643[1] = @"RemoveSU";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v643 forKeys:v642 count:2];
  v659[7] = v28;
  v658[8] = @"RB_RollbackSuspendSuccess";
  v640 = v2;
  v641 = @"RollbackUpdateDecideResume";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v641 forKeys:&v640 count:1];
  v659[8] = v27;
  v658[9] = @"RB_PerformRollbackResume";
  v638[0] = v3;
  v638[1] = v2;
  v639[0] = @"RB_RollingBackResume";
  v639[1] = @"RollbackUpdateResume";
  v575 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v639 forKeys:v638 count:2];
  v659[9] = v575;
  v658[10] = @"RB_PerformRollbackApply";
  v636[0] = v3;
  v636[1] = v2;
  v637[0] = @"RB_RollingBackApply";
  v637[1] = @"RollbackUpdateApply";
  v572 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v637 forKeys:v636 count:2];
  v659[10] = v572;
  v658[11] = @"RB_RollbackAppleSuccess";
  v634[0] = v3;
  v634[1] = v2;
  v635[0] = @"AwaitingReboot";
  v635[1] = @"ReportRollbackSucceeded";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v635 forKeys:v634 count:2];
  v659[11] = v26;
  v658[12] = @"RB_RollbackFailed";
  v632[0] = v3;
  v632[1] = v2;
  v633[0] = @"ReadyToBegin";
  v633[1] = @"ReportRollbackFailed";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v633 forKeys:v632 count:2];
  v659[12] = v25;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v659 forKeys:v658 count:13];
  v1729[24] = v24;
  v1728[25] = @"RB_RollingBackResume";
  v630[0] = @"TargetBrainLoaded";
  v628 = v2;
  v629 = @"ReportAnomalyAPI";
  v574 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v629 forKeys:&v628 count:1];
  v631[0] = v574;
  v630[1] = @"TargetDownloadPreflighted";
  v626 = v2;
  v627 = @"ReportAnomalyAPI";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v627 forKeys:&v626 count:1];
  v631[1] = v23;
  v630[2] = @"TargetDownloaded";
  v624 = v2;
  v625 = @"ReportAnomalyAPI";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v625 forKeys:&v624 count:1];
  v631[2] = v22;
  v630[3] = @"TargetPrepared";
  v622 = v2;
  v623 = @"ReportAnomalyAPI";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
  v631[3] = v21;
  v630[4] = @"TargetApplied";
  v620 = v2;
  v621 = @"ReportAnomalyAPI";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v621 forKeys:&v620 count:1];
  v631[4] = v20;
  v630[5] = @"TargetRollback";
  v618 = v2;
  v619 = @"UpdateTarget";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v619 forKeys:&v618 count:1];
  v631[5] = v19;
  v630[6] = @"ResumeCurrentUpdate";
  v616 = v2;
  v617 = @"ReportAnomalyAPI";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v617 forKeys:&v616 count:1];
  v631[6] = v18;
  v630[7] = @"CancelCurrentUpdate";
  v614[0] = v3;
  v614[1] = v2;
  v615[0] = @"RB_Canceling";
  v615[1] = @"RemoveSU";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v615 forKeys:v614 count:2];
  v631[7] = v17;
  v630[8] = @"RB_RollbackResumeSuccess";
  v612 = v2;
  v613 = @"RollbackUpdateDecideApply";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v613 forKeys:&v612 count:1];
  v631[8] = v16;
  v630[9] = @"RB_PerformRollbackApply";
  v610[0] = v3;
  v610[1] = v2;
  v611[0] = @"RB_RollingBackApply";
  v611[1] = @"RollbackUpdateApply";
  v576 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v611 forKeys:v610 count:2];
  v631[9] = v576;
  v630[10] = @"RB_RollbackAppleSuccess";
  v608[0] = v3;
  v608[1] = v2;
  v609[0] = @"AwaitingReboot";
  v609[1] = @"ReportRollbackSucceeded";
  v573 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v609 forKeys:v608 count:2];
  v631[10] = v573;
  v630[11] = @"RB_RollbackFailed";
  v606[0] = v3;
  v606[1] = v2;
  v607[0] = @"ReadyToBegin";
  v607[1] = @"ReportRollbackFailed";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v607 forKeys:v606 count:2];
  v631[11] = v15;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v631 forKeys:v630 count:12];
  v1729[25] = v14;
  v1728[26] = @"RB_RollingBackApply";
  v604[0] = @"TargetBrainLoaded";
  v602 = v2;
  v603 = @"ReportAnomalyAPI";
  v570 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v603 forKeys:&v602 count:1];
  v605[0] = v570;
  v604[1] = @"TargetDownloadPreflighted";
  v600 = v2;
  v601 = @"ReportAnomalyAPI";
  v580 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v601 forKeys:&v600 count:1];
  v605[1] = v580;
  v604[2] = @"TargetDownloaded";
  v598 = v2;
  v599 = @"ReportAnomalyAPI";
  v578 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v599 forKeys:&v598 count:1];
  v605[2] = v578;
  v604[3] = @"TargetPrepared";
  v596 = v2;
  v597 = @"ReportAnomalyAPI";
  v577 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v597 forKeys:&v596 count:1];
  v605[3] = v577;
  v604[4] = @"TargetApplied";
  v594 = v2;
  v595 = @"ReportAnomalyAPI";
  v579 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v595 forKeys:&v594 count:1];
  v605[4] = v579;
  v604[5] = @"TargetRollback";
  v592 = v2;
  v593 = @"UpdateTarget";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v593 forKeys:&v592 count:1];
  v605[5] = v4;
  v604[6] = @"ResumeCurrentUpdate";
  v590 = v2;
  v591 = @"ReportAnomalyAPI";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v591 forKeys:&v590 count:1];
  v605[6] = v5;
  v604[7] = @"CancelCurrentUpdate";
  v588[0] = v3;
  v588[1] = v2;
  v589[0] = @"RB_Canceling";
  v589[1] = @"RemoveSU";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v589 forKeys:v588 count:2];
  v605[7] = v6;
  v604[8] = @"RB_RollbackAppleSuccess";
  v586[0] = v3;
  v586[1] = v2;
  v587[0] = @"AwaitingReboot";
  v587[1] = @"ReportRollbackSucceeded";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v587 forKeys:v586 count:2];
  v605[8] = v7;
  v604[9] = @"RB_RollbackApplyFailed";
  v584[0] = v3;
  v584[1] = v2;
  v585[0] = @"ReadyToBegin";
  v585[1] = @"ReportRollbackFailed";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v585 forKeys:v584 count:2];
  v605[9] = v8;
  v604[10] = @"RB_RollbackFailed";
  v582[0] = v3;
  v582[1] = v2;
  v583[0] = @"ReadyToBegin";
  v583[1] = @"ReportRollbackFailed";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v583 forKeys:v582 count:2];
  v605[10] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v605 forKeys:v604 count:11];
  v1729[26] = v10;
  v581 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v1729 forKeys:v1728 count:27];

  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v581 copyItems:1];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (int64_t)performAction:(id)a3 onEvent:(id)a4 inState:(id)a5 withInfo:(id)a6 nextState:(id)a7 error:(id *)a8
{
  v11 = a3;
  v12 = a6;
  if ([v11 isEqualToString:*MEMORY[0x277D647D0]])
  {
    v13 = 0;
  }

  else
  {
    if ([v11 isEqualToString:@"DecideLoadBrain"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideLoadBrain:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"LoadBrain"])
    {
      v14 = [(SUCoreUpdate *)self actionLoadBrain:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportBrainLoadProgress"])
    {
      v14 = [(SUCoreUpdate *)self actionReportBrainLoadProgress:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AdvanceBrainLoadSuccess"])
    {
      v14 = [(SUCoreUpdate *)self actionAdvanceBrainLoadSuccess:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportBrainLoadSuccess"])
    {
      v14 = [(SUCoreUpdate *)self actionReportBrainLoadSuccess:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecidePreflightDownloadSU"])
    {
      v14 = [(SUCoreUpdate *)self actionDecidePreflightDownloadSU:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"PreflightDownloadSU"])
    {
      v14 = [(SUCoreUpdate *)self actionPreflightDownloadSU:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AdvanceDownloadPreflighted"])
    {
      v14 = [(SUCoreUpdate *)self actionAdvanceDownloadPreflighted:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportDownloadPreflighted"])
    {
      v14 = [(SUCoreUpdate *)self actionReportDownloadPreflighted:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideDownloadSpaceCheck"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideDownloadSpaceCheck:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ChooseErrorSpaceCheck"])
    {
      v14 = [(SUCoreUpdate *)self actionChooseErrorSpaceCheck:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"CheckSpace"])
    {
      v14 = [(SUCoreUpdate *)self actionCheckSpace:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideDownloadSU"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideDownloadSU:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DownloadSU"])
    {
      v14 = [(SUCoreUpdate *)self actionDownloadSU:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportDownloadProgress"])
    {
      v14 = [(SUCoreUpdate *)self actionReportDownloadProgress:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportDownloadStalled"])
    {
      v14 = [(SUCoreUpdate *)self actionReportDownloadStalled:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AdvanceSUDownloaded"])
    {
      v14 = [(SUCoreUpdate *)self actionAdvanceSUDownloaded:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportSUDownloaded"])
    {
      v14 = [(SUCoreUpdate *)self actionReportSUDownloaded:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecidePrepareUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecidePrepareUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"PrepareUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionPrepareUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportPrepareProgress"])
    {
      v14 = [(SUCoreUpdate *)self actionReportPrepareProgress:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideSuspendUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideSuspendUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"SuspendUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionSuspendUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"AdvanceSuspended"])
    {
      v14 = [(SUCoreUpdate *)self actionAdvanceSuspended:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportPrepared"])
    {
      v14 = [(SUCoreUpdate *)self actionReportPrepared:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ResumeCurrentUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionResumeCurrentUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportResumeCurrentSuccess"])
    {
      v14 = [(SUCoreUpdate *)self actionReportResumeCurrentSuccess:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportResumeCurrentFailed"])
    {
      v14 = [(SUCoreUpdate *)self actionReportResumeCurrentFailed:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideResumeUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideResumeUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ResumeUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionResumeUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideApplyUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideApplyUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportApplyProgress"])
    {
      v14 = [(SUCoreUpdate *)self actionReportApplyProgress:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ApplyUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionApplyUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportApplyFailed"])
    {
      v14 = [(SUCoreUpdate *)self actionReportApplyFailed:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportApplied"])
    {
      v14 = [(SUCoreUpdate *)self actionReportApplied:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideCancelBeforeRollback"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideCancelBeforeRollback:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideBeginRollback"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideBeginRollback:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"LoadBrainRollback"])
    {
      v14 = [(SUCoreUpdate *)self actionLoadBrainRollback:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"DecideRollbackUpdate"])
    {
      v14 = [(SUCoreUpdate *)self actionDecideRollbackUpdate:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RollbackUpdatePrepare"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdatePrepare:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RollbackUpdateDecideSuspend"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateDecideSuspend:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RollbackUpdateSuspend"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateSuspend:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RollbackUpdateDecideResume"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateDecideResume:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RollbackUpdateResume"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateResume:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RollbackUpdateDecideApply"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateDecideApply:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RollbackUpdateApply"])
    {
      v14 = [(SUCoreUpdate *)self actionRollbackUpdateApply:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportRollbackFailed"])
    {
      v14 = [(SUCoreUpdate *)self actionReportRollbackFailed:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportRollbackSucceeded"])
    {
      v14 = [(SUCoreUpdate *)self actionReportRollbackSuccess:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportAttemptFailure"])
    {
      v14 = [(SUCoreUpdate *)self actionReportAttemptFailure:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RemovePrepared"])
    {
      v14 = [(SUCoreUpdate *)self actionRemovePrepared:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"RemoveSU"])
    {
      v14 = [(SUCoreUpdate *)self actionRemoveSU:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"CancelPrepare"])
    {
      v14 = [(SUCoreUpdate *)self actionCancelPrepare:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportCanceled"])
    {
      v14 = [(SUCoreUpdate *)self actionReportCanceled:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"UpdateTarget"])
    {
      v14 = [(SUCoreUpdate *)self actionUpdateTarget:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"UpdateTargetReconfig"])
    {
      v14 = [(SUCoreUpdate *)self actionUpdateTargetReconfig:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportAnomalyAPI"])
    {
      v14 = [(SUCoreUpdate *)self actionReportAnomalyAPI:v12 error:a8];
    }

    else if ([v11 isEqualToString:@"ReportAnomalyAPIEnd"])
    {
      v14 = [(SUCoreUpdate *)self actionReportAnomalyAPIEnd:v12 error:a8];
    }

    else
    {
      v14 = [(SUCoreUpdate *)self actionUnknownAction:v11 error:a8];
    }

    v13 = v14;
  }

  return v13;
}

- (int64_t)actionUpdateTarget:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  return 0;
}

- (int64_t)actionUpdateTargetReconfig:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];
  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];

  v10 = [v5 policy];

  if (v10)
  {
    v11 = [(SUCoreUpdate *)self downloadControl];
    v12 = [v5 policy];
    [v11 alterPolicy:v12];
  }

  return 0;
}

- (int64_t)actionDecideLoadBrain:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:2];
  return 0;
}

- (int64_t)actionLoadBrain:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self setFailedAttemptError:0];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 loadBrain:v11];

  return 0;
}

- (int64_t)actionDecidePreflightDownloadSU:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:3];
  return 0;
}

- (int64_t)actionPreflightDownloadSU:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 preflightDownloadSU:v11];

  return 0;
}

- (int64_t)actionDecideDownloadSU:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:5];
  return 0;
}

- (int64_t)actionDownloadSU:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self updateDescriptor];
  if ([v10 descriptorType] == 1)
  {
    goto LABEL_4;
  }

  v11 = [(SUCoreUpdate *)self updateDescriptor];
  if ([v11 descriptorType] == 3)
  {

LABEL_4:
    goto LABEL_5;
  }

  v16 = [(SUCoreUpdate *)self updateDescriptor];
  v17 = [v16 descriptorType];

  if (v17 != 5)
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = [(SUCoreUpdate *)self updateDescriptor];
    v20 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [v19 descriptorType]);
    v13 = [v18 initWithFormat:@"Descriptor is not of required type (SUCoreDescriptorTypeAsset, SUCoreDescriptorTypeSFRAsset, or SUCoreDescriptorTypeSplatAsset) for downloading, found %@", v20];

    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"DOWNLOAD_SU" result:8116 description:v13];
    goto LABEL_7;
  }

LABEL_5:
  v12 = [(SUCoreUpdate *)self downloadControl];

  if (!v12)
  {
    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"DOWNLOAD_SU" result:8116 description:@"SUCoreUpdateDownloader instance not available when about to call download"];
    return 0;
  }

  v13 = [(SUCoreUpdate *)self downloadControl];
  v14 = [(SUCoreUpdate *)self policy];
  [v13 downloadUpdateWithPolicy:v14];

LABEL_7:
  return 0;
}

- (int64_t)actionDecidePrepareUpdate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:6];
  return 0;
}

- (int64_t)actionPrepareUpdate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 prepareUpdate:v11];

  return 0;
}

- (int64_t)actionDecideSuspendUpdate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:7];
  return 0;
}

- (int64_t)actionSuspendUpdate:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreUpdate *)self msuControl];
  [v7 suspendUpdate];

  return 0;
}

- (int64_t)actionDecideResumeUpdate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:8];
  return 0;
}

- (int64_t)actionResumeUpdate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 resumeUpdate:v11];

  return 0;
}

- (int64_t)actionResumeCurrentUpdate:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreUpdate *)self msuControl];
  v8 = [(SUCoreUpdate *)self policy];
  [v7 resumeUpdate:v8];

  return 0;
}

- (int64_t)actionDecideApplyUpdate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:9];
  return 0;
}

- (int64_t)actionApplyUpdate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 applyUpdate:v11];

  return 0;
}

- (int64_t)actionDecideCancelBeforeRollback:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:1];
  return 0;
}

- (int64_t)actionDecideBeginRollback:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:2];
  return 0;
}

- (int64_t)actionLoadBrainRollback:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:3];
  return 0;
}

- (int64_t)actionDecideRollbackUpdate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:4];
  return 0;
}

- (int64_t)actionRollbackUpdatePrepare:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 rollbackUpdatePrepare:v11];

  return 0;
}

- (int64_t)actionRollbackUpdateDecideSuspend:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:5];
  return 0;
}

- (int64_t)actionRollbackUpdateSuspend:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 rollbackUpdateSuspend:v11];

  return 0;
}

- (int64_t)actionRollbackUpdateDecideResume:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:6];
  return 0;
}

- (int64_t)actionRollbackUpdateResume:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 rollbackUpdateResume:v11];

  return 0;
}

- (int64_t)actionRollbackUpdateDecideApply:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingRollbackPhase:7];
  return 0;
}

- (int64_t)actionRollbackUpdateApply:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  v10 = [(SUCoreUpdate *)self msuControl];
  v11 = [(SUCoreUpdate *)self policy];
  [v10 rollbackUpdateApply:v11];

  return 0;
}

- (int64_t)actionDecideDownloadSpaceCheck:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 targetPhase];
  v9 = [v5 policy];

  [(SUCoreUpdate *)self _adjustTarget:v8 withPolicy:v9];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:4];
  return 0;
}

- (int64_t)actionChooseErrorSpaceCheck:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SUCoreUpdate *)self policy];
  LODWORD(v7) = [v8 checkAvailableSpace];

  v9 = [(SUCoreUpdate *)self updateFSM];
  v10 = v9;
  v11 = kSU_E_PerformErrorSpaceCheck;
  if (!v7)
  {
    v11 = kSU_E_SkipErrorSpaceCheck;
  }

  [v9 followupEvent:*v11 withInfo:v5];

  return 0;
}

- (int64_t)actionCheckSpace:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SUCoreUpdate *)self updateDescriptor];
  v9 = [v8 msuPrepareSize];

  if (v9)
  {
    v10 = [(SUCoreUpdate *)self updateDescriptor];
    v11 = [v10 totalRequiredFreeSpace];
    v12 = [(SUCoreUpdate *)self updateDescriptor];
    v13 = v11 - [v12 msuPrepareSize];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(SUCoreUpdate *)self updateDescriptor];
  v15 = [v14 totalRequiredFreeSpace];

  if (_os_feature_enabled_impl())
  {
    v16 = [(SUCoreUpdate *)self updateDescriptor];
    v15 = [v16 totalSnapshotRequiredFreeSpace];
  }

  v17 = [(SUCoreUpdate *)self policy];
  v18 = [v17 cacheDeleteUrgency];
  v19 = [(SUCoreUpdate *)self policy];
  v20 = [v19 updateVolumePath];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__SUCoreUpdate_actionCheckSpace_error___block_invoke;
  v23[3] = &unk_27892E068;
  v23[4] = self;
  v24 = v5;
  v21 = v5;
  [SUCoreSpace checkAvailableSpace:v15 allowPurgeWithUrgency:v18 purgingFromBase:v20 minimalRequiredFreeSpace:v13 completion:v23];

  return 0;
}

void __39__SUCoreUpdate_actionCheckSpace_error___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = a5;
  if (v20)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 40) error];

    if (!v8)
    {
      v9 = [[SUCoreUpdateParam alloc] initWithError:v20];

      v7 = v9;
    }

    v10 = *(a1 + 32);
    v11 = [v7 error];
    [v10 _trackUpdateError:@"checkAvailableSpace" forReason:@"unable to check available space" error:v11];

    v12 = [*(a1 + 32) updateFSM];
    [v12 postEvent:@"SpaceCheckFailed" withInfo:v7];
  }

  else if (a2)
  {
    v7 = [*(a1 + 32) updateFSM];
    [v7 postEvent:@"SpaceCheckHaveSpace" withInfo:*(a1 + 40)];
  }

  else
  {
    v7 = *(a1 + 40);
    v13 = [*(a1 + 40) error];

    if (!v13)
    {
      v14 = [MEMORY[0x277D643F8] sharedCore];
      v15 = [v14 buildError:8600 underlying:0 description:@"insufficient space to perform update"];

      v16 = [[SUCoreUpdateParam alloc] initWithError:v15];
      v7 = v16;
    }

    v17 = *(a1 + 32);
    v18 = [v7 error];
    [v17 _trackUpdateError:@"checkAvailableSpace" forReason:@"insufficient space to perform update" error:v18];

    v19 = [*(a1 + 32) updateFSM];
    [v19 postEvent:@"SpaceCheckNoSpace" withInfo:*(a1 + 40)];
  }
}

- (int64_t)actionRemoveSU:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreUpdate *)self updateDescriptor];
  if ([v7 descriptorType] == 1)
  {
    goto LABEL_4;
  }

  v8 = [(SUCoreUpdate *)self updateDescriptor];
  if ([v8 descriptorType] == 3)
  {

LABEL_4:
    goto LABEL_5;
  }

  v17 = [(SUCoreUpdate *)self updateDescriptor];
  v18 = [v17 descriptorType];

  if (v18 != 5)
  {
    v19 = [(SUCoreUpdate *)self updateDescriptor];
    if ([v19 descriptorType] == 2)
    {
    }

    else
    {
      v20 = [(SUCoreUpdate *)self updateDescriptor];
      v21 = [v20 descriptorType];

      if (v21 != 4)
      {
        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        v28 = [(SUCoreUpdate *)self updateDescriptor];
        v29 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [v28 descriptorType]);
        v30 = [v27 initWithFormat:@"Unable to determine a known descriptor type for removal, found %@", v29];

        [(SUCoreUpdate *)self _trackUpdateAnomaly:@"REMOVE_SU" result:8116 description:v30];
        goto LABEL_11;
      }
    }

    v22 = [MEMORY[0x277D64460] sharedLogger];
    v23 = [v22 oslog];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(SUCoreUpdate *)self updateDescriptor];
      v25 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [v24 descriptorType]);
      *buf = 138543618;
      v32 = self;
      v33 = 2114;
      v34 = v25;
      _os_log_impl(&dword_23193C000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Not removing descriptor of type %{public}@; posting removed event", buf, 0x16u);
    }

    v14 = [(SUCoreUpdate *)self updateFSM];
    v26 = objc_alloc_init(SUCoreUpdateParam);
    [v14 followupEvent:@"SURemoved" withInfo:v26];

    goto LABEL_9;
  }

LABEL_5:
  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(SUCoreUpdate *)self updateDescriptor];
    v12 = +[SUCoreDescriptor nameForDescriptorType:](SUCoreDescriptor, "nameForDescriptorType:", [v11 descriptorType]);
    *buf = 138543618;
    v32 = self;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing descriptor of type %{public}@", buf, 0x16u);
  }

  v13 = [(SUCoreUpdate *)self downloadControl];

  if (!v13)
  {
    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"REMOVE_SU" result:8116 description:@"SUCoreUpdateDownloader instance not available when about to call to remove asset"];
    goto LABEL_11;
  }

  v14 = [(SUCoreUpdate *)self downloadControl];
  [v14 removeUpdate];
LABEL_9:

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int64_t)actionCancelPrepare:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreUpdate *)self msuControl];
  [v7 cancelPrepare];

  return 0;
}

- (int64_t)actionRemovePrepared:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SUCoreUpdate *)self msuControl];
  [v7 removePrepared];

  return 0;
}

- (int64_t)actionReportBrainLoadProgress:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 downloadProgress];
  LODWORD(v7) = [v8 isStalled];

  v9 = [v5 downloadProgress];

  if (v7)
  {
    [(SUCoreUpdate *)self _updateBrainLoadStalled:v9];
  }

  else
  {
    [(SUCoreUpdate *)self _updateBrainLoadProgress:v9];
  }

  return 0;
}

- (int64_t)actionAdvanceBrainLoadSuccess:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 downloadProgress];

  [(SUCoreUpdate *)self _updateBrainLoaded:v8];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:3];
  return 0;
}

- (int64_t)actionReportBrainLoadSuccess:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 downloadProgress];

  [(SUCoreUpdate *)self _updateBrainLoaded:v8];
  return 0;
}

- (int64_t)actionAdvanceDownloadPreflighted:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(SUCoreUpdate *)self _updateAssetDownloadPreflighted];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:4];
  return 0;
}

- (int64_t)actionReportDownloadPreflighted:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(SUCoreUpdate *)self _updateAssetDownloadPreflighted];
  return 0;
}

- (int64_t)actionReportDownloadProgress:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 downloadProgress];

  [(SUCoreUpdate *)self _updateAssetDownloadProgress:v8];
  return 0;
}

- (int64_t)actionReportDownloadStalled:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 downloadProgress];

  [(SUCoreUpdate *)self _updateAssetDownloadStalled:v8];
  return 0;
}

- (int64_t)actionAdvanceSUDownloaded:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 downloadProgress];

  [(SUCoreUpdate *)self _updateAssetDownloaded:v8];
  [(SUCoreUpdate *)self _eventAfterReachingPhase:6];
  return 0;
}

- (int64_t)actionReportSUDownloaded:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 downloadProgress];

  [(SUCoreUpdate *)self _updateAssetDownloaded:v8];
  return 0;
}

- (int64_t)actionReportPrepareProgress:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 prepareProgress];

  [(SUCoreUpdate *)self _updatePrepareProgress:v8];
  return 0;
}

- (int64_t)actionAdvanceSuspended:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(SUCoreUpdate *)self _eventAfterReachingPhase:8];
  return 0;
}

- (int64_t)actionReportPrepared:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_alloc(MEMORY[0x277D64488]);
  LODWORD(v8) = 1.0;
  v9 = [v7 initWithPhase:*MEMORY[0x277D64850] isStalled:0 portionComplete:v8 remaining:0.0];
  [(SUCoreUpdate *)self _updatePrepared:v9];

  return 0;
}

- (int64_t)actionReportResumeCurrentSuccess:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(SUCoreUpdate *)self _updateCurrentResumed];
  return 0;
}

- (int64_t)actionReportResumeCurrentFailed:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 error];

  [(SUCoreUpdate *)self _updateCurrentResumeFailed:v8];
  return 0;
}

- (int64_t)actionReportApplyProgress:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 applyProgress];

  [(SUCoreUpdate *)self _updateApplyProgress:v8];
  return 0;
}

- (int64_t)actionReportApplied:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(SUCoreUpdate *)self _updateApplied];
  return 0;
}

- (int64_t)actionReportRollbackSuccess:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 rollback];

  [(SUCoreUpdate *)self _updateRolledBack:v8];
  return 0;
}

- (int64_t)actionReportApplyFailed:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 error];

  [(SUCoreUpdate *)self _applyAttemptFailed:v8];
  return 0;
}

- (int64_t)actionReportAttemptFailure:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 error];

  [(SUCoreUpdate *)self _updateAttemptFailed:v8];
  [(SUCoreUpdate *)self _cleanupAfterAttempt];
  return 0;
}

- (int64_t)actionReportCanceled:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  [(SUCoreUpdate *)self _updateCanceled];
  [(SUCoreUpdate *)self _cleanupAfterAttempt];
  return 0;
}

- (int64_t)actionReportRollbackFailed:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v5 rollback];
  v9 = [v5 error];

  [(SUCoreUpdate *)self _rollbackAttemptFailed:v8 withError:v9];
  return 0;
}

- (int64_t)actionReportAnomalyAPI:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277D643F8] sharedCore];
  v8 = [v7 buildError:8115 underlying:0 description:@"API call not valid for current state"];

  [(SUCoreUpdate *)self _updateAnomaly:v8];
  return 0;
}

- (int64_t)actionReportAnomalyAPIEnd:(id)a3 error:(id *)a4
{
  v5 = [(SUCoreUpdate *)self updateFSM:a3];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277D643F8] sharedCore];
  v8 = [v7 buildError:8115 underlying:0 description:@"API call not valid for current resting state"];

  [(SUCoreUpdate *)self _updateAnomaly:v8];
  v9 = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  [MEMORY[0x277D643F8] endTransaction:v9 withName:@"update.Transaction"];

  return 0;
}

- (int64_t)actionUnknownAction:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [[v5 alloc] initWithFormat:@"unknown action(%@)", v6];

  v8 = [(SUCoreUpdate *)self updateFSM];
  v9 = [v8 diag];
  [v9 dumpTracked:v7 dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];

  v10 = [MEMORY[0x277D643F8] sharedCore];
  v11 = [v10 buildError:8116 underlying:0 description:v7];

  [(SUCoreUpdate *)self _updateAnomaly:v11];
  return 0;
}

- (SUCoreUpdate)initWithDelegate:(id)a3 updateDescriptor:(id)a4 updateUUID:(id)a5 withCallbackQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v75.receiver = self;
  v75.super_class = SUCoreUpdate;
  v14 = [(SUCoreUpdate *)&v75 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_21;
  }

  objc_storeStrong(&v14->_updateDescriptor, a4);
  objc_storeWeak(&v15->_updateDelegate, v10);
  objc_storeStrong(&v15->_updateUUID, a5);
  v16 = [MEMORY[0x277D643F8] sharedCore];
  v17 = [v16 selectDelegateCallbackQueue:v13];
  clientDelegateCallbackQueue = v15->_clientDelegateCallbackQueue;
  v15->_clientDelegateCallbackQueue = v17;

  policy = v15->_policy;
  v15->_targetPhase = 1;
  v15->_policy = 0;

  failedAttemptError = v15->_failedAttemptError;
  v15->_failedAttemptError = 0;

  v21 = objc_alloc_init(SUCoreRollback);
  rollbackControl = v15->_rollbackControl;
  v15->_rollbackControl = v21;

  v23 = [(SUCoreRollback *)v15->_rollbackControl eligibleRollback];
  rollbackDescriptor = v15->_rollbackDescriptor;
  v15->_rollbackDescriptor = v23;

  v25 = [MEMORY[0x277D64418] sharedDevice];
  v26 = [v25 releaseType];

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = @"user";
  }

  v28 = v15->_rollbackDescriptor;
  if (!v28 || ![(SUCoreRollbackDescriptor *)v28 rollbackEligible])
  {
    if (!v15->_updateDescriptor)
    {
      v63 = [MEMORY[0x277D64460] sharedLogger];
      v64 = [v63 oslog];

      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, v64, OS_LOG_TYPE_DEFAULT, "[Update]Initializing SUCoreUpdate without an SUCoreDescriptor nor SUCoreRollbackDescriptor instance. Returning nil SUCoreUpdate", buf, 2u);
      }

      goto LABEL_25;
    }

LABEL_12:
    v71 = v13;
    v73 = v10;
    v41 = objc_alloc(MEMORY[0x277CCACA8]);
    updateUUID = v15->_updateUUID;
    v43 = [MEMORY[0x277D64418] sharedDevice];
    v44 = [v43 buildVersion];
    v45 = [(SUCoreDescriptor *)v15->_updateDescriptor productBuildVersion];
    v46 = [(SUCoreDescriptor *)v15->_updateDescriptor releaseType];
    v47 = [(SUCoreDescriptor *)v15->_updateDescriptor fullReplacement];
    v48 = @"incr";
    if (v47)
    {
      v48 = @"full";
    }

    v72 = v27;
    v49 = [v41 initWithFormat:@"UUID(%@) %@(%@)->%@(%@) %@", updateUUID, v44, v27, v45, v46, v48];
    updateName = v15->_updateName;
    v15->_updateName = v49;

    v51 = [(SUCoreUpdate *)v15 updateDescriptor];
    if ([v51 descriptorType] != 1)
    {
      v52 = [(SUCoreUpdate *)v15 updateDescriptor];
      if ([v52 descriptorType] != 3)
      {
        v66 = [(SUCoreUpdate *)v15 updateDescriptor];
        v67 = [v66 descriptorType];

        if (v67 != 5)
        {
          v68 = [MEMORY[0x277D64460] sharedLogger];
          v69 = [v68 oslog];

          v13 = v71;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, v69, OS_LOG_TYPE_DEFAULT, "[Update] Descriptor type does not indicate SUCoreDescriptorTypeAsset or SUCoreDescriptorTypeSFRAsset or SUCoreDescriptorTypeSplatAsset, no SUCoreUpdateDownloader instance will be initialized", buf, 2u);
          }

          v53 = 0;
          goto LABEL_19;
        }

LABEL_18:
        v53 = [[SUCoreUpdateDownloader alloc] initWithDelegate:v15 forUpdate:v11 updateUUID:v12];
        v13 = v71;
LABEL_19:
        downloadControl = v15->_downloadControl;
        v15->_downloadControl = v53;

        v55 = [[SUCoreMSU alloc] initWithDelegate:v15];
        msuControl = v15->_msuControl;
        v15->_msuControl = v55;

        [(SUCoreMSU *)v15->_msuControl assignDescriptor:v11 updateUUID:v12];
        goto LABEL_20;
      }
    }

    goto LABEL_18;
  }

  if (v15->_updateDescriptor)
  {
    goto LABEL_12;
  }

  v73 = v10;
  v70 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = v15->_updateUUID;
  v30 = [(SUCoreRollbackDescriptor *)v15->_rollbackDescriptor productBuildVersion];
  v31 = [(SUCoreRollbackDescriptor *)v15->_rollbackDescriptor releaseType];
  v32 = [MEMORY[0x277D64418] sharedDevice];
  v33 = [v32 buildVersion];
  v72 = v27;
  v34 = [v70 initWithFormat:@"UUID(%@) %@(%@)->%@(%@)", v29, v30, v31, v33, v27];
  v35 = v15->_updateName;
  v15->_updateName = v34;

  v36 = [MEMORY[0x277D64460] sharedLogger];
  v37 = [v36 oslog];

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23193C000, v37, OS_LOG_TYPE_DEFAULT, "[Update] Initializing with rollback descriptor. No SUCoreUpdateDownloader instance will be initialized", buf, 2u);
  }

  v38 = v15->_downloadControl;
  v15->_downloadControl = 0;

  v39 = [[SUCoreMSU alloc] initWithDelegate:v15];
  v40 = v15->_msuControl;
  v15->_msuControl = v39;

  [(SUCoreMSU *)v15->_msuControl assignRollbackDescriptor:v15->_rollbackDescriptor updateUUID:v12];
LABEL_20:
  v57 = [objc_opt_class() _generateStateTable];
  stateTable = v15->_stateTable;
  v15->_stateTable = v57;

  v59 = [objc_alloc(MEMORY[0x277D64458]) initMachine:@"update" ofInstance:v15->_updateName withTable:v15->_stateTable startingIn:@"ReadyToBegin" usingDelegate:v15 registeringAllInfoClass:objc_opt_class()];
  updateFSM = v15->_updateFSM;
  v15->_updateFSM = v59;

  v61 = v15->_updateFSM;
  v10 = v73;
  if (!v61)
  {
LABEL_25:
    v62 = 0;
    goto LABEL_26;
  }

LABEL_21:
  v62 = v15;
LABEL_26:

  return v62;
}

- (void)targetBrainLoaded:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUCoreUpdate_targetBrainLoaded___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

void __34__SUCoreUpdate_targetBrainLoaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:3 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetBrainLoaded" withInfo:v3];
}

- (void)targetDownloadPreflighted:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUCoreUpdate_targetDownloadPreflighted___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

void __42__SUCoreUpdate_targetDownloadPreflighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:4 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetDownloadPreflighted" withInfo:v3];
}

- (void)targetDownloaded:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUCoreUpdate_targetDownloaded___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

void __33__SUCoreUpdate_targetDownloaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:6 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetDownloaded" withInfo:v3];
}

- (void)targetPrepared:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SUCoreUpdate_targetPrepared___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

void __31__SUCoreUpdate_targetPrepared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:9 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetPrepared" withInfo:v3];
}

- (void)targetApplied:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__SUCoreUpdate_targetApplied___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

void __30__SUCoreUpdate_targetApplied___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:10 withPolicy:*(a1 + 48)];
  [v4 postEvent:@"TargetApplied" withInfo:v3];
}

- (void)targetRollback:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v7 = [v6 extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SUCoreUpdate_targetRollback___block_invoke;
  block[3] = &unk_27892D340;
  block[4] = self;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  dispatch_async(v7, block);
}

void __31__SUCoreUpdate_targetRollback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v6 = [*(a1 + 32) updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  v4 = [*(a1 + 32) rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:v4 withPolicy:*(a1 + 48)];
  [v6 postEvent:@"TargetRollback" withInfo:v5];
}

- (void)resumeCurrentUpdate
{
  v3 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  v4 = [(SUCoreUpdate *)self updateFSM];
  v5 = [v4 extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUCoreUpdate_resumeCurrentUpdate__block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __35__SUCoreUpdate_resumeCurrentUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) updateFSM];
  v3 = [[SUCoreUpdateParam alloc] initTargetPhase:1 withPolicy:0];
  [v4 postEvent:@"ResumeCurrentUpdate" withInfo:v3];
}

- (void)cancelCurrentUpdate
{
  v3 = [MEMORY[0x277D643F8] beginTransactionWithName:@"update.Transaction"];
  v4 = [(SUCoreUpdate *)self updateFSM];
  v5 = [v4 extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUCoreUpdate_cancelCurrentUpdate__block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __35__SUCoreUpdate_cancelCurrentUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateTransaction];

  if (v2)
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"update.Transaction"];
  }

  else
  {
    [*(a1 + 32) setUpdateTransaction:*(a1 + 40)];
  }

  v3 = [MEMORY[0x277D643F8] sharedCore];
  v6 = [v3 buildError:8124 underlying:0 description:@"update attempt was canceled"];

  [*(a1 + 32) _trackUpdateError:@"cancelCurrentUpdate" forReason:0 error:v6];
  v4 = [*(a1 + 32) updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initTargetPhase:1 withPolicy:0];
  [v4 postEvent:@"CancelCurrentUpdate" withInfo:v5];
}

- (id)copyCurrentState
{
  v2 = [(SUCoreUpdate *)self updateFSM];
  v3 = [v2 copyCurrentState];

  return v3;
}

- (id)rollbackAvailable
{
  v2 = [(SUCoreUpdate *)self rollbackControl];
  v3 = [v2 eligibleRollback];

  return v3;
}

- (id)previousRollback
{
  v2 = [(SUCoreUpdate *)self rollbackControl];
  v3 = [v2 previousRollback];

  return v3;
}

- (void)_updateBrainLoadProgress:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__SUCoreUpdate__updateBrainLoadProgress___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v7, v11);
  }

  else
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateBrainLoadProgress:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __41__SUCoreUpdate__updateBrainLoadProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateBrainLoadProgress:*(a1 + 40)];
}

- (void)_updateBrainLoadStalled:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__SUCoreUpdate__updateBrainLoadStalled___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v7, v11);
  }

  else
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateBrainLoadStalled:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __40__SUCoreUpdate__updateBrainLoadStalled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateBrainLoadStalled:*(a1 + 40)];
}

- (void)_updateBrainLoaded:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SUCoreUpdate *)self targetPhase]> 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  v6 = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__SUCoreUpdate__updateBrainLoaded___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v13 = v4;
    v14 = v5;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateBrainLoaded:) so not reporting progress=%{public}@", buf, 0x16u);
    }

    if (v5)
    {
      [MEMORY[0x277D643F8] endTransaction:v5 withName:@"update.Transaction"];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __35__SUCoreUpdate__updateBrainLoaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateBrainLoaded:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updateAssetDownloadPreflighted
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(SUCoreUpdate *)self targetPhase]> 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  v4 = [(SUCoreUpdate *)self updateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SUCoreUpdate__updateAssetDownloadPreflighted__block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = v3;
    dispatch_async(v6, v10);
  }

  else
  {
    v7 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAssetDownloadPreflighted) so not reporting", buf, 0xCu);
    }

    if (v3)
    {
      [MEMORY[0x277D643F8] endTransaction:v3 withName:@"update.Transaction"];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __47__SUCoreUpdate__updateAssetDownloadPreflighted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAssetDownloadPreflighted];

  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updateAssetDownloadProgress:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__SUCoreUpdate__updateAssetDownloadProgress___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v7, v11);
  }

  else
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAssetDownloadProgress:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __45__SUCoreUpdate__updateAssetDownloadProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAssetDownloadProgress:*(a1 + 40)];
}

- (void)_updateAssetDownloadStalled:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__SUCoreUpdate__updateAssetDownloadStalled___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v7, v11);
  }

  else
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAssetDownloadStalled:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __44__SUCoreUpdate__updateAssetDownloadStalled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAssetDownloadStalled:*(a1 + 40)];
}

- (void)_updateAssetDownloaded:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SUCoreUpdate *)self targetPhase]> 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  v6 = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SUCoreUpdate__updateAssetDownloaded___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v13 = v4;
    v14 = v5;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAssetDownloaded:) so not reporting progress=%{public}@", buf, 0x16u);
    }

    if (v5)
    {
      [MEMORY[0x277D643F8] endTransaction:v5 withName:@"update.Transaction"];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __39__SUCoreUpdate__updateAssetDownloaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAssetDownloaded:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updatePrepareProgress:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__SUCoreUpdate__updatePrepareProgress___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v7, v11);
  }

  else
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updatePrepareProgress:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __39__SUCoreUpdate__updatePrepareProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updatePrepareProgress:*(a1 + 40)];
}

- (void)_updatePrepared:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SUCoreUpdate *)self targetPhase]> 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  v6 = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SUCoreUpdate__updatePrepared___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v13 = v4;
    v14 = v5;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updatePrepared:) so not reporting progress=%{public}@", buf, 0x16u);
    }

    if (v5)
    {
      [MEMORY[0x277D643F8] endTransaction:v5 withName:@"update.Transaction"];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __32__SUCoreUpdate__updatePrepared___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updatePrepared:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updateCurrentResumed
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  v4 = [(SUCoreUpdate *)self updateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SUCoreUpdate__updateCurrentResumed__block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = v3;
    dispatch_async(v6, v10);
  }

  else
  {
    v7 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateCurrentResumed) so not reporting", buf, 0xCu);
    }

    if (v3)
    {
      [MEMORY[0x277D643F8] endTransaction:v3 withName:@"update.Transaction"];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __37__SUCoreUpdate__updateCurrentResumed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateCurrentResumed];

  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_updateCurrentResumeFailed:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  v6 = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SUCoreUpdate *)self failedAttemptError];
    if (!v8)
    {
      v8 = v4;
    }

    v9 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SUCoreUpdate__updateCurrentResumeFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v15 = v8;
    v16 = v5;
    v10 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateCurrentResumeFailed:) so not reporting error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:v5 withName:@"update.Transaction"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __43__SUCoreUpdate__updateCurrentResumeFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateCurrentResumeFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)_updateApplyProgress:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__SUCoreUpdate__updateApplyProgress___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v7, v11);
  }

  else
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateApplyProgress:) so not reporting progress=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __37__SUCoreUpdate__updateApplyProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateApplyProgress:*(a1 + 40)];
}

- (void)_updateApplied
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SUCoreUpdate *)self targetPhase]> 10)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  v4 = [(SUCoreUpdate *)self updateDescriptor];
  v5 = [v4 splatOnly];

  if (v5)
  {
    v6 = [(SUCoreUpdate *)self updateDescriptor];
    v7 = [MEMORY[0x277CBEAA8] date];
    [v6 setSplatInstallDate:v7];
  }

  v8 = [(SUCoreUpdate *)self updateDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __30__SUCoreUpdate__updateApplied__block_invoke;
    v14[3] = &unk_27892D478;
    v14[4] = self;
    v15 = v3;
    dispatch_async(v10, v14);
  }

  else
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateApplied:) so not reporting", buf, 0xCu);
    }

    if (v3)
    {
      [MEMORY[0x277D643F8] endTransaction:v3 withName:@"update.Transaction"];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __30__SUCoreUpdate__updateApplied__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateApplied];

  if (*(a1 + 40))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_applyAttemptFailed:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  v6 = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SUCoreUpdate *)self failedAttemptError];
    if (!v8)
    {
      v8 = v4;
    }

    v9 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__SUCoreUpdate__applyAttemptFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v15 = v8;
    v16 = v5;
    v10 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(applyAttemptFailed:) so not reporting error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:v5 withName:@"update.Transaction"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __36__SUCoreUpdate__applyAttemptFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 applyAttemptFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)_updateAttemptFailed:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  v6 = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SUCoreUpdate *)self failedAttemptError];
    if (!v8)
    {
      v8 = v4;
    }

    v9 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__SUCoreUpdate__updateAttemptFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v15 = v8;
    v16 = v5;
    v10 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAttemptFailed:) so not reporting error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:v5 withName:@"update.Transaction"];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __37__SUCoreUpdate__updateAttemptFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAttemptFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)_updateCanceled
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  v4 = [(SUCoreUpdate *)self updateDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__SUCoreUpdate__updateCanceled__block_invoke;
    v10[3] = &unk_27892D478;
    v10[4] = self;
    v11 = v3;
    dispatch_async(v6, v10);
  }

  else
  {
    v7 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateCanceled) so not reporting", buf, 0xCu);
    }

    [MEMORY[0x277D643F8] endTransaction:v3 withName:@"update.Transaction"];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __31__SUCoreUpdate__updateCanceled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateCanceled];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)_updateAnomaly:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __31__SUCoreUpdate__updateAnomaly___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v7, v11);
  }

  else
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateAnomaly:) so not reporting error=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __31__SUCoreUpdate__updateAnomaly___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 updateAnomaly:*(a1 + 40)];
}

- (void)_updateRolledBack:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SUCoreUpdate *)self targetPhase]> 11)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SUCoreUpdate *)self updateTransaction];
    [(SUCoreUpdate *)self setUpdateTransaction:0];
  }

  v6 = [(SUCoreUpdate *)self updateDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__SUCoreUpdate__updateRolledBack___block_invoke;
    block[3] = &unk_27892D340;
    v13 = v4;
    v14 = self;
    v15 = v5;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(updateRolledBack:) so not reporting", buf, 0xCu);
    }

    if (v5)
    {
      [MEMORY[0x277D643F8] endTransaction:v5 withName:@"update.Transaction"];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __34__SUCoreUpdate__updateRolledBack___block_invoke(uint64_t a1)
{
  [*(a1 + 32) rollbackCompleted];
  v2 = [*(a1 + 40) updateDelegate];
  [v2 updateRolledBack:*(a1 + 32)];

  if (*(a1 + 48))
  {
    v3 = MEMORY[0x277D643F8];

    [v3 endTransaction:? withName:?];
  }
}

- (void)_rollbackAttemptFailed:(id)a3 withError:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SUCoreUpdate *)self updateTransaction];
  [(SUCoreUpdate *)self setUpdateTransaction:0];
  v9 = [(SUCoreUpdate *)self updateDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SUCoreUpdate *)self failedAttemptError];
    if (!v11)
    {
      v11 = v7;
    }

    v12 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__SUCoreUpdate__rollbackAttemptFailed_withError___block_invoke;
    v17[3] = &unk_27892E090;
    v17[4] = self;
    v18 = v6;
    v19 = v11;
    v20 = v8;
    v13 = v11;
    dispatch_async(v12, v17);
  }

  else
  {
    v14 = [MEMORY[0x277D64460] sharedLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(rollbackAttemptFailed:) so not reporting error=%{public}@", buf, 0x16u);
    }

    [MEMORY[0x277D643F8] endTransaction:v8 withName:@"update.Transaction"];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __49__SUCoreUpdate__rollbackAttemptFailed_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 rollbackAttemptFailed:*(a1 + 40) withError:*(a1 + 48)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 56);

  return [v3 endTransaction:v4 withName:@"update.Transaction"];
}

- (void)msuBrainLoadProgress:(id)a3
{
  v4 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:v4];

  [v6 postEvent:@"BrainLoadProgress" withInfo:v5];
}

- (void)msuBrainLoadStalled:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SUCoreUpdate *)self updateName];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[UPDATE(%{public}@)] msuBrainLoadStalled - not being reported to policy layer progress=%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)msuBrainLoaded:(id)a3
{
  v4 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:v4];

  [v6 postEvent:@"BrainLoadSuccess" withInfo:v5];
}

- (void)msuBrainLoadFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuBrainLoadFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"BrainLoadFailed" withInfo:v5];
}

- (void)msuSUDownloadPreflighted
{
  v3 = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [v3 postEvent:@"PreflightSuccess" withInfo:v2];
}

- (void)msuSUDownloadPreflightFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuSUDownloadPreflightFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"PreflightFailed" withInfo:v5];
}

- (void)msuPrepareProgress:(id)a3
{
  v4 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithPrepareProgress:v4];

  [v6 postEvent:@"PrepareProgress" withInfo:v5];
}

- (void)msuPrepared:(id)a3
{
  v4 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithPrepareProgress:v4];

  [v6 postEvent:@"PrepareSuccess" withInfo:v5];
}

- (void)msuPrepareFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuPrepareFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"PrepareFailed" withInfo:v5];
}

- (void)msuSuspended
{
  v3 = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [v3 postEvent:@"SuspendSuccess" withInfo:v2];
}

- (void)msuSuspendFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuSuspendFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"SuspendFailed" withInfo:v5];
}

- (void)msuResumed
{
  v3 = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [v3 postEvent:@"ResumeSuccess" withInfo:v2];
}

- (void)msuResumeFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuResumeFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"ResumeFailed" withInfo:v5];
}

- (void)msuApplyProgress:(id)a3
{
  v4 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithApplyProgress:v4];

  [v6 postEvent:@"ApplyProgress" withInfo:v5];
}

- (void)msuApplied
{
  v3 = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [v3 postEvent:@"ApplySuccess" withInfo:v2];
}

- (void)msuApplyFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuApplyFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"ApplyFailed" withInfo:v5];
}

- (void)msuRollbackPrepareSuccess
{
  v6 = [(SUCoreUpdate *)self updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  v4 = [(SUCoreUpdate *)self rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:v4 withError:0];
  [v6 postEvent:@"RB_RollbackPrepareSuccess" withInfo:v5];
}

- (void)msuRollbackSuspendSuccess
{
  v6 = [(SUCoreUpdate *)self updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  v4 = [(SUCoreUpdate *)self rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:v4 withError:0];
  [v6 postEvent:@"RB_RollbackSuspendSuccess" withInfo:v5];
}

- (void)msuRollbackResumeSuccess
{
  v6 = [(SUCoreUpdate *)self updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  v4 = [(SUCoreUpdate *)self rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:v4 withError:0];
  [v6 postEvent:@"RB_RollbackResumeSuccess" withInfo:v5];
}

- (void)msuRollbackApplySuccess
{
  v6 = [(SUCoreUpdate *)self updateFSM];
  v3 = [SUCoreUpdateParam alloc];
  v4 = [(SUCoreUpdate *)self rollbackControl];
  v5 = [(SUCoreUpdateParam *)v3 initWithRollback:v4 withError:0];
  [v6 postEvent:@"RB_RollbackAppleSuccess" withInfo:v5];
}

- (void)msuRollbackApplyFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuRollbackApplyFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"RB_RollbackApplyFailed" withInfo:v5];
}

- (void)msuRollbackFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuRollbackFailed" forReason:0 error:v4];
  v8 = [(SUCoreUpdate *)self updateFSM];
  v5 = [SUCoreUpdateParam alloc];
  v6 = [(SUCoreUpdate *)self rollbackControl];
  v7 = [(SUCoreUpdateParam *)v5 initWithRollback:v6 withError:v4];

  [v8 postEvent:@"RB_RollbackFailed" withInfo:v7];
}

- (void)msuRemoved
{
  v3 = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [v3 postEvent:@"SURemoved" withInfo:v2];
}

- (void)msuRemoveFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"msuRemoveFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"SURemoved" withInfo:v5];
}

- (void)downloadProgress:(id)a3
{
  v4 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:v4];

  [v6 postEvent:@"DownloadProgress" withInfo:v5];
}

- (void)downloadStalled:(id)a3
{
  v4 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:v4];

  [v6 postEvent:@"DownloadStalled" withInfo:v5];
}

- (void)preSUStagingFinished:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SUCoreUpdate *)self clientDelegateCallbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__SUCoreUpdate_preSUStagingFinished___block_invoke;
    v11[3] = &unk_27892D478;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v7, v11);
  }

  else
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate does not respond to selector(preSUStagingFinished:) so not reporting psusOutcome=%{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __37__SUCoreUpdate_preSUStagingFinished___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateDelegate];
  [v2 preSUStagingFinished:*(a1 + 40)];
}

- (void)downloaded:(id)a3
{
  v4 = a3;
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithDownloadProgress:v4];

  [v6 postEvent:@"DownloadSuccess" withInfo:v5];
}

- (void)downloadFailed:(id)a3
{
  v4 = a3;
  [(SUCoreUpdate *)self _trackUpdateError:@"maDownloadFailed" forReason:0 error:v4];
  v6 = [(SUCoreUpdate *)self updateFSM];
  v5 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v6 postEvent:@"DownloadFailed" withInfo:v5];
}

- (void)updateRemoved
{
  v3 = [(SUCoreUpdate *)self updateFSM];
  v2 = objc_alloc_init(SUCoreUpdateParam);
  [v3 postEvent:@"SURemoved" withInfo:v2];
}

- (void)updateRemoveFailed:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreUpdate *)self updateFSM];
  v6 = [v5 diag];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ remove failed (reported as removed)", self];
  [v6 trackAnomaly:@"MA-DELEGATE" forReason:v7 withResult:objc_msgSend(v4 withError:{"code"), v4}];

  [(SUCoreUpdate *)self _trackUpdateError:@"maAssetRemoveFailed" forReason:0 error:v4];
  v9 = [(SUCoreUpdate *)self updateFSM];
  v8 = [[SUCoreUpdateParam alloc] initWithError:v4];

  [v9 postEvent:@"SURemoved" withInfo:v8];
}

- (void)anomaly:(id)a3
{
  v4 = a3;
  v7 = [(SUCoreUpdate *)self updateFSM];
  v5 = [v7 diag];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ anomaly", self];
  [v5 trackAnomaly:@"MA-DELEGATE" forReason:v6 withResult:objc_msgSend(v4 withError:{"code"), v4}];
}

- (void)_adjustTarget:(int64_t)a3 withPolicy:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SUCoreUpdate *)self updateFSM];
  v8 = [v7 extendedStateQueue];
  dispatch_assert_queue_V2(v8);

  if (a3)
  {
    if ([(SUCoreUpdate *)self targetPhase]<= a3)
    {
      [(SUCoreUpdate *)self setTargetPhase:a3];
      if (!v6)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [SUCoreUpdateParam targetPhaseName:a3];
    v11 = [SUCoreUpdateParam targetPhaseName:[(SUCoreUpdate *)self targetPhase]];
    v12 = [v9 initWithFormat:@"target requested(%@) when targeting(%@) [no change to target]", v10, v11];

    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"TARGET" result:8116 description:v12];
  }

  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_7:
  [(SUCoreUpdate *)self setPolicy:v6];
  v13 = [MEMORY[0x277D64460] sharedLogger];
  v14 = [v13 oslog];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(SUCoreUpdate *)self policy];
    *buf = 138543618;
    v18 = self;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ adjusted policy: %@", buf, 0x16u);
  }

LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_eventAfterReachingPhase:(int64_t)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdate *)self updateFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (a3 <= 5)
  {
    if (a3 > 3)
    {
      if (a3 != 4)
      {
LABEL_34:
        v28 = [(SUCoreUpdate *)self policy];
        v29 = [v28 softwareUpdateDownloadPolicy];
        v30 = [v29 skipPhase];

        if (!v30)
        {
          v14 = kSU_E_PerformDownloadSU;
          goto LABEL_68;
        }

        v31 = [MEMORY[0x277D64460] sharedLogger];
        v32 = [v31 oslog];

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [SUCoreUpdateParam targetPhaseName:a3];
          v34 = [SUCoreUpdateParam targetPhaseName:6];
          *buf = 138543874;
          v69 = self;
          v70 = 2114;
          v71 = v33;
          v72 = 2114;
          v73 = v34;
          _os_log_impl(&dword_23193C000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped download of SU asset", buf, 0x20u);
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (a3 == 2)
      {
        v7 = [(SUCoreUpdate *)self policy];
        v8 = [v7 loadBrainPolicy];
        v9 = [v8 skipPhase];

        if (!v9)
        {
          v14 = kSU_E_PerformLoadBrain;
          goto LABEL_68;
        }

        v10 = [MEMORY[0x277D64460] sharedLogger];
        v11 = [v10 oslog];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [SUCoreUpdateParam targetPhaseName:2];
          v13 = [SUCoreUpdateParam targetPhaseName:3];
          *buf = 138543874;
          v69 = self;
          v70 = 2114;
          v71 = v12;
          v72 = 2114;
          v73 = v13;
          _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped load of update brain", buf, 0x20u);
        }
      }

      else if (a3 != 3)
      {
        goto LABEL_71;
      }

      if ([(SUCoreUpdate *)self targetPhase]< 4)
      {
        v14 = kSU_E_BrainLoadSuccessAtTarget;
        goto LABEL_68;
      }

      v15 = [(SUCoreUpdate *)self policy];
      v16 = [v15 downloadPreflightPolicy];
      v17 = [v16 skipPhase];

      if (!v17)
      {
        v14 = kSU_E_PerformPreflightDownloadSU;
        goto LABEL_68;
      }

      v18 = [MEMORY[0x277D64460] sharedLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [SUCoreUpdateParam targetPhaseName:a3];
        v21 = [SUCoreUpdateParam targetPhaseName:4];
        *buf = 138543874;
        v69 = self;
        v70 = 2114;
        v71 = v20;
        v72 = 2114;
        v73 = v21;
        _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped preflight of SU asset download", buf, 0x20u);
      }
    }

    if ([(SUCoreUpdate *)self targetPhase]< 5)
    {
      v14 = kSU_E_PreflightSuccessAtTarget;
      goto LABEL_68;
    }

    v22 = [(SUCoreUpdate *)self policy];
    v23 = [v22 checkAvailableSpace];

    if (v23)
    {
      v14 = kSU_E_PerformDownloadSpaceCheck;
      goto LABEL_68;
    }

    v24 = [MEMORY[0x277D64460] sharedLogger];
    v25 = [v24 oslog];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [SUCoreUpdateParam targetPhaseName:a3];
      v27 = [SUCoreUpdateParam targetPhaseName:5];
      *buf = 138543874;
      v69 = self;
      v70 = 2114;
      v71 = v26;
      v72 = 2114;
      v73 = v27;
      _os_log_impl(&dword_23193C000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped check of available filesystem space", buf, 0x20u);
    }

    goto LABEL_34;
  }

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
LABEL_44:
      v42 = [(SUCoreUpdate *)self policy];
      v43 = [v42 suspendPolicy];
      v44 = [v43 skipPhase];

      if (!v44)
      {
        v14 = kSU_E_PerformSuspend;
        goto LABEL_68;
      }

      v45 = [MEMORY[0x277D64460] sharedLogger];
      v46 = [v45 oslog];

      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [SUCoreUpdateParam targetPhaseName:a3];
        v48 = [SUCoreUpdateParam targetPhaseName:8];
        *buf = 138543874;
        v69 = self;
        v70 = 2114;
        v71 = v47;
        v72 = 2114;
        v73 = v48;
        _os_log_impl(&dword_23193C000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped suspend of prepared update", buf, 0x20u);
      }

      goto LABEL_48;
    }

LABEL_38:
    if ([(SUCoreUpdate *)self targetPhase]< 7)
    {
      v14 = kSU_E_DownloadSuccessAtTarget;
      goto LABEL_68;
    }

    v35 = [(SUCoreUpdate *)self policy];
    v36 = [v35 preparePolicy];
    v37 = [v36 skipPhase];

    if (!v37)
    {
      v14 = kSU_E_PerformPrepare;
      goto LABEL_68;
    }

    v38 = [MEMORY[0x277D64460] sharedLogger];
    v39 = [v38 oslog];

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [SUCoreUpdateParam targetPhaseName:a3];
      v41 = [SUCoreUpdateParam targetPhaseName:7];
      *buf = 138543874;
      v69 = self;
      v70 = 2114;
      v71 = v40;
      v72 = 2114;
      v73 = v41;
      _os_log_impl(&dword_23193C000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped prepare of update", buf, 0x20u);
    }

    goto LABEL_44;
  }

  if (a3 == 8)
  {
LABEL_48:
    if ([(SUCoreUpdate *)self targetPhase]< 9)
    {
      v14 = kSU_E_SuspendSuccessAtTarget;
      goto LABEL_68;
    }

    v49 = [(SUCoreUpdate *)self policy];
    v50 = [v49 resumePolicy];
    v51 = [v50 skipPhase];

    if (!v51)
    {
      v14 = kSU_E_PerformResume;
      goto LABEL_68;
    }

    v52 = [MEMORY[0x277D64460] sharedLogger];
    v53 = [v52 oslog];

    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [SUCoreUpdateParam targetPhaseName:a3];
      v55 = [SUCoreUpdateParam targetPhaseName:9];
      *buf = 138543874;
      v69 = self;
      v70 = 2114;
      v71 = v54;
      v72 = 2114;
      v73 = v55;
      _os_log_impl(&dword_23193C000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped resume of suspended update", buf, 0x20u);
    }

    goto LABEL_54;
  }

  if (a3 != 9)
  {
    if (a3 != 10)
    {
      goto LABEL_71;
    }

    goto LABEL_60;
  }

LABEL_54:
  if ([(SUCoreUpdate *)self targetPhase]< 10)
  {
    v14 = kSU_E_ResumeSuccessAtTarget;
    goto LABEL_68;
  }

  v56 = [(SUCoreUpdate *)self policy];
  v57 = [v56 applyPolicy];
  v58 = [v57 skipPhase];

  if (!v58)
  {
    v14 = kSU_E_PerformApply;
    goto LABEL_68;
  }

  v59 = [MEMORY[0x277D64460] sharedLogger];
  v60 = [v59 oslog];

  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [SUCoreUpdateParam targetPhaseName:a3];
    v62 = [SUCoreUpdateParam targetPhaseName:10];
    *buf = 138543874;
    v69 = self;
    v70 = 2114;
    v71 = v61;
    v72 = 2114;
    v73 = v62;
    _os_log_impl(&dword_23193C000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped apply of update", buf, 0x20u);
  }

LABEL_60:
  if ([(SUCoreUpdate *)self targetPhase]>= 11)
  {
    v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"after reaching applied phase encountered invalid target phase(%ld)", -[SUCoreUpdate targetPhase](self, "targetPhase")];
    [(SUCoreUpdate *)self _trackUpdateAnomaly:@"[REACHED_PHASE]" result:8116 description:v63];
LABEL_70:

    goto LABEL_71;
  }

  v14 = kSU_E_ApplySuccess;
LABEL_68:
  v64 = *v14;
  if (v64)
  {
    v63 = v64;
    v65 = [(SUCoreUpdate *)self updateFSM];
    v66 = objc_alloc_init(SUCoreUpdateParam);
    [v65 followupEvent:v63 withInfo:v66];

    goto LABEL_70;
  }

LABEL_71:
  v67 = *MEMORY[0x277D85DE8];
}

- (void)_eventAfterReachingRollbackPhase:(int64_t)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdate *)self updateFSM];
  v6 = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(v6);

  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 != 7)
      {
        if (a3 != 8)
        {
          goto LABEL_64;
        }

        goto LABEL_58;
      }

LABEL_49:
      v56 = [(SUCoreUpdate *)self policy];
      v57 = [v56 rollbackPolicy];
      v58 = [v57 performPhase];

      if (v58)
      {
        v59 = [(SUCoreUpdate *)self policy];
        v60 = [v59 rollbackPolicy];
        v61 = [v60 performRollbackApplyPhase];

        if (v61)
        {
          v14 = kSU_E_RB_PerformRollbackApply;
          goto LABEL_60;
        }

        v66 = [MEMORY[0x277D64460] sharedLogger];
        v29 = [v66 oslog];

        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_57;
        }

        v63 = [SUCoreUpdateParam targetRollbackPhaseName:a3];
        v64 = [SUCoreUpdateParam targetRollbackPhaseName:8];
        *buf = 138543874;
        v73 = self;
        v74 = 2114;
        v75 = v63;
        v76 = 2114;
        v77 = v64;
        v65 = "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback apply phase";
        goto LABEL_56;
      }

      v62 = [MEMORY[0x277D64460] sharedLogger];
      v29 = [v62 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_53:
        v63 = [SUCoreUpdateParam targetRollbackPhaseName:a3];
        v64 = [SUCoreUpdateParam targetRollbackPhaseName:8];
        *buf = 138543874;
        v73 = self;
        v74 = 2114;
        v75 = v63;
        v76 = 2114;
        v77 = v64;
        v65 = "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback phase";
LABEL_56:
        _os_log_impl(&dword_23193C000, v29, OS_LOG_TYPE_DEFAULT, v65, buf, 0x20u);
      }

LABEL_57:

LABEL_58:
      if ([(SUCoreUpdate *)self targetPhase]>= 9)
      {
        v68 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"after reaching rollback complete phase encountered invalid target phase(%ld)", -[SUCoreUpdate targetPhase](self, "targetPhase")];
        [(SUCoreUpdate *)self _trackUpdateAnomaly:@"[REACHED_PHASE]" result:8116 description:v68];
        goto LABEL_63;
      }

      v14 = kSU_E_RB_RollbackApplySuccess;
      goto LABEL_60;
    }

    if (a3 != 5)
    {
LABEL_41:
      v45 = [(SUCoreUpdate *)self policy];
      v46 = [v45 rollbackPolicy];
      v47 = [v46 performPhase];

      if ((v47 & 1) == 0)
      {
        v51 = [MEMORY[0x277D64460] sharedLogger];
        v29 = [v51 oslog];

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        goto LABEL_57;
      }

      v48 = [(SUCoreUpdate *)self policy];
      v49 = [v48 rollbackPolicy];
      v50 = [v49 performRollbackResumePhase];

      if (v50)
      {
        v14 = kSU_E_RB_PerformRollbackResume;
        goto LABEL_60;
      }

      v52 = [MEMORY[0x277D64460] sharedLogger];
      v53 = [v52 oslog];

      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [SUCoreUpdateParam targetRollbackPhaseName:a3];
        v55 = [SUCoreUpdateParam targetRollbackPhaseName:7];
        *buf = 138543874;
        v73 = self;
        v74 = 2114;
        v75 = v54;
        v76 = 2114;
        v77 = v55;
        _os_log_impl(&dword_23193C000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback resume phase", buf, 0x20u);
      }

      goto LABEL_49;
    }

LABEL_33:
    v34 = [(SUCoreUpdate *)self policy];
    v35 = [v34 rollbackPolicy];
    v36 = [v35 performPhase];

    if ((v36 & 1) == 0)
    {
      v40 = [MEMORY[0x277D64460] sharedLogger];
      v29 = [v40 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    v37 = [(SUCoreUpdate *)self policy];
    v38 = [v37 rollbackPolicy];
    v39 = [v38 performRollbackSuspendPhase];

    if (v39)
    {
      v14 = kSU_E_RB_PerformRollbackSuspend;
      goto LABEL_60;
    }

    v41 = [MEMORY[0x277D64460] sharedLogger];
    v42 = [v41 oslog];

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [SUCoreUpdateParam targetRollbackPhaseName:a3];
      v44 = [SUCoreUpdateParam targetRollbackPhaseName:6];
      *buf = 138543874;
      v73 = self;
      v74 = 2114;
      v75 = v43;
      v76 = 2114;
      v77 = v44;
      _os_log_impl(&dword_23193C000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback suspend phase", buf, 0x20u);
    }

    goto LABEL_41;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v15 = [(SUCoreUpdate *)self policy];
      v16 = [v15 loadBrainPolicy];
      v17 = [v16 skipPhase];

      if (!v17)
      {
        v14 = kSU_E_RB_PerformLoadBrain;
        goto LABEL_60;
      }

      v18 = [MEMORY[0x277D64460] sharedLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [SUCoreUpdateParam targetRollbackPhaseName:3];
        v21 = [SUCoreUpdateParam targetRollbackPhaseName:4];
        *buf = 138543874;
        v73 = self;
        v74 = 2114;
        v75 = v20;
        v76 = 2114;
        v77 = v21;
        _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped load of update brain", buf, 0x20u);
      }
    }

    v22 = [(SUCoreUpdate *)self policy];
    v23 = [v22 rollbackPolicy];
    v24 = [v23 performPhase];

    if ((v24 & 1) == 0)
    {
      v28 = [MEMORY[0x277D64460] sharedLogger];
      v29 = [v28 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    v25 = [(SUCoreUpdate *)self policy];
    v26 = [v25 rollbackPolicy];
    v27 = [v26 performRollbackPreparePhase];

    if (v27)
    {
      v14 = kSU_E_RB_PerformRollbackPrepare;
      goto LABEL_60;
    }

    v30 = [MEMORY[0x277D64460] sharedLogger];
    v31 = [v30 oslog];

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [SUCoreUpdateParam targetRollbackPhaseName:a3];
      v33 = [SUCoreUpdateParam targetRollbackPhaseName:5];
      *buf = 138543874;
      v73 = self;
      v74 = 2114;
      v75 = v32;
      v76 = 2114;
      v77 = v33;
      _os_log_impl(&dword_23193C000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped rollback prepare phase", buf, 0x20u);
    }

    goto LABEL_33;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_64;
    }

    goto LABEL_18;
  }

  v7 = [(SUCoreUpdate *)self policy];
  v8 = [v7 rollbackPolicy];
  v9 = [v8 skipCancelPreviousUpdate];

  if (v9)
  {
    v10 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [SUCoreUpdateParam targetRollbackPhaseName:1];
      v13 = [SUCoreUpdateParam targetRollbackPhaseName:2];
      *buf = 138543874;
      v73 = self;
      v74 = 2114;
      v75 = v12;
      v76 = 2114;
      v77 = v13;
      _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [REACHED_PHASE:%{public}@=>%{public}@] skipped cancel previous update of SU asset download before rollback", buf, 0x20u);
    }

LABEL_18:
    v14 = kSU_E_RB_BeginRollback;
    goto LABEL_60;
  }

  v14 = kSU_E_RB_CancelNonRollbackUpdate;
LABEL_60:
  v67 = *v14;
  if (v67)
  {
    v68 = v67;
    v69 = [(SUCoreUpdate *)self updateFSM];
    v70 = objc_alloc_init(SUCoreUpdateParam);
    [v69 followupEvent:v68 withInfo:v70];

LABEL_63:
  }

LABEL_64:
  v71 = *MEMORY[0x277D85DE8];
}

- (void)_trackUpdateAnomaly:(id)a3 result:(int64_t)a4 description:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(SUCoreUpdate *)self updateFSM];
  v11 = [v10 extendedStateQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [MEMORY[0x277D643F8] sharedCore];
  v17 = [v12 buildError:a4 underlying:0 description:v8];

  v13 = [(SUCoreUpdate *)self updateFSM];
  v14 = [v13 diag];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[UPDATE] %@", v9];

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %@", self, v8];
  [v14 trackAnomaly:v15 forReason:v16 withResult:a4 withError:v17];

  [(SUCoreUpdate *)self _updateAnomaly:v17];
}

- (void)_trackUpdateError:(id)a3 forReason:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = @"general";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;
    v12 = a4;
    v13 = [(SUCoreUpdate *)self failedAttemptError];

    if (!v13)
    {
      [(SUCoreUpdate *)self setFailedAttemptError:v9];
      v14 = [MEMORY[0x277D64460] sharedLogger];
      v15 = [v14 oslog];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SUCoreUpdate _trackUpdateError:v11 forReason:v15 error:?];
      }
    }

    v16 = [(SUCoreUpdate *)self updateFSM];
    v17 = [v16 diag];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[UPDATE] %@", v11];
    [v17 trackError:v18 forReason:v12 withResult:objc_msgSend(v9 withError:{"code"), v9}];
  }

  else
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = a4;
    v21 = [v19 alloc];
    v22 = @"no reason provided";
    if (v20)
    {
      v22 = v20;
    }

    v11 = [v21 initWithFormat:@"tracking update error when no error provided (%@)", v22];

    [(SUCoreUpdate *)self _trackUpdateAnomaly:v8 result:8101 description:v11];
  }
}

- (void)_cleanupAfterAttempt
{
  [(SUCoreUpdate *)self setTargetPhase:1];

  [(SUCoreUpdate *)self setPolicy:0];
}

- (id)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (void)_trackUpdateError:(void *)a1 forReason:(uint64_t)a2 error:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a1 failedAttemptError];
  v8 = 138543874;
  v9 = a1;
  v10 = 2114;
  v11 = a2;
  v12 = 2114;
  v13 = v6;
  _os_log_error_impl(&dword_23193C000, a3, OS_LOG_TYPE_ERROR, "%{public}@ first error for update attempt {%{public}@} error: %{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end