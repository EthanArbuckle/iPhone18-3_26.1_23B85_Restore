@interface SFHeadphoneProduct
+ (SFHeadphoneProduct)airPods;
+ (SFHeadphoneProduct)airPodsMax;
+ (SFHeadphoneProduct)airPodsPro;
+ (SFHeadphoneProduct)airPodsSecondGeneration;
+ (SFHeadphoneProduct)b453;
+ (SFHeadphoneProduct)b463;
+ (SFHeadphoneProduct)b465;
+ (SFHeadphoneProduct)b487;
+ (SFHeadphoneProduct)b494;
+ (SFHeadphoneProduct)b494b;
+ (SFHeadphoneProduct)b498;
+ (SFHeadphoneProduct)b507;
+ (SFHeadphoneProduct)b607;
+ (SFHeadphoneProduct)b688;
+ (SFHeadphoneProduct)b698;
+ (SFHeadphoneProduct)b768e;
+ (SFHeadphoneProduct)b768m;
+ (SFHeadphoneProduct)b788;
+ (SFHeadphoneProduct)beatsFlex;
+ (SFHeadphoneProduct)beatsSolo;
+ (SFHeadphoneProduct)beatsSoloPro;
+ (SFHeadphoneProduct)beatsStudio;
+ (SFHeadphoneProduct)beatsX;
+ (SFHeadphoneProduct)powerBeats3;
+ (SFHeadphoneProduct)powerBeats4;
+ (SFHeadphoneProduct)powerBeatsPro;
- (SFHeadphoneProduct)initWithBluetoothModel:(id)a3;
- (SFHeadphoneProduct)initWithModel:(unint64_t)a3;
- (SFHeadphoneProduct)initWithProductID:(unsigned int)a3;
- (SFHeadphoneProduct)initWithProductID:(unsigned int)a3 supportsMobileAsset:(BOOL)a4;
@end

@implementation SFHeadphoneProduct

+ (SFHeadphoneProduct)b607
{
  if (b607_onceToken != -1)
  {
    +[SFHeadphoneProduct b607];
  }

  v3 = b607_b607;

  return v3;
}

+ (SFHeadphoneProduct)b688
{
  if (b688_onceToken != -1)
  {
    +[SFHeadphoneProduct b688];
  }

  v3 = b688_b688;

  return v3;
}

+ (SFHeadphoneProduct)b494
{
  if (b494_onceToken != -1)
  {
    +[SFHeadphoneProduct b494];
  }

  v3 = b494_b494;

  return v3;
}

+ (SFHeadphoneProduct)b698
{
  if (b698_onceToken != -1)
  {
    +[SFHeadphoneProduct b698];
  }

  v3 = b698_airPodsPro;

  return v3;
}

+ (SFHeadphoneProduct)b453
{
  if (b453_onceToken != -1)
  {
    +[SFHeadphoneProduct b453];
  }

  v3 = b453_b453;

  return v3;
}

+ (SFHeadphoneProduct)b507
{
  if (b507_onceToken != -1)
  {
    +[SFHeadphoneProduct b507];
  }

  v3 = b507_b507;

  return v3;
}

+ (SFHeadphoneProduct)b768e
{
  if (b768e_onceToken != -1)
  {
    +[SFHeadphoneProduct b768e];
  }

  v3 = b768e_b768e;

  return v3;
}

+ (SFHeadphoneProduct)b768m
{
  if (b768m_onceToken != -1)
  {
    +[SFHeadphoneProduct b768m];
  }

  v3 = b768m_b768m;

  return v3;
}

+ (SFHeadphoneProduct)b788
{
  if (b788_onceToken != -1)
  {
    +[SFHeadphoneProduct b788];
  }

  v3 = b788_airPodsPro;

  return v3;
}

+ (SFHeadphoneProduct)b465
{
  if (b465_onceToken != -1)
  {
    +[SFHeadphoneProduct b465];
  }

  v3 = b465_b465;

  return v3;
}

+ (SFHeadphoneProduct)b487
{
  if (b487_onceToken != -1)
  {
    +[SFHeadphoneProduct b487];
  }

  v3 = b487_b487;

  return v3;
}

+ (SFHeadphoneProduct)b498
{
  if (b498_onceToken != -1)
  {
    +[SFHeadphoneProduct b498];
  }

  v3 = b498_b498;

  return v3;
}

+ (SFHeadphoneProduct)b463
{
  if (b463_onceToken != -1)
  {
    +[SFHeadphoneProduct b463];
  }

  v3 = b463_b463;

  return v3;
}

+ (SFHeadphoneProduct)airPodsPro
{
  if (airPodsPro_onceToken != -1)
  {
    +[SFHeadphoneProduct airPodsPro];
  }

  v3 = airPodsPro_airPodsPro;

  return v3;
}

+ (SFHeadphoneProduct)airPodsMax
{
  if (airPodsMax_onceToken != -1)
  {
    +[SFHeadphoneProduct airPodsMax];
  }

  v3 = airPodsMax_airPodsMax;

  return v3;
}

+ (SFHeadphoneProduct)powerBeatsPro
{
  if (powerBeatsPro_onceToken != -1)
  {
    +[SFHeadphoneProduct powerBeatsPro];
  }

  v3 = powerBeatsPro_powerBeatsPro;

  return v3;
}

- (SFHeadphoneProduct)initWithProductID:(unsigned int)a3 supportsMobileAsset:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = SFHeadphoneProduct;
  result = [(SFHeadphoneProduct *)&v7 init];
  result->_supportsMobileAsset = a4;
  result->_productID = a3;
  result->_altProductID = -1;
  return result;
}

- (SFHeadphoneProduct)initWithModel:(unint64_t)a3
{
  v4 = 0;
  switch(a3)
  {
    case 1uLL:
      v5 = +[SFHeadphoneProduct airPods];
      goto LABEL_27;
    case 2uLL:
      v5 = +[SFHeadphoneProduct airPodsSecondGeneration];
      goto LABEL_27;
    case 3uLL:
      v5 = +[SFHeadphoneProduct airPodsPro];
      goto LABEL_27;
    case 4uLL:
      v5 = +[SFHeadphoneProduct airPodsMax];
      goto LABEL_27;
    case 5uLL:
      v5 = +[SFHeadphoneProduct beatsSolo];
      goto LABEL_27;
    case 6uLL:
      v5 = +[SFHeadphoneProduct beatsSoloPro];
      goto LABEL_27;
    case 7uLL:
      v5 = +[SFHeadphoneProduct beatsStudio];
      goto LABEL_27;
    case 8uLL:
      v5 = +[SFHeadphoneProduct beatsX];
      goto LABEL_27;
    case 9uLL:
      v5 = +[SFHeadphoneProduct beatsFlex];
      goto LABEL_27;
    case 0xAuLL:
      v5 = +[SFHeadphoneProduct powerBeats3];
      goto LABEL_27;
    case 0xBuLL:
      v5 = +[SFHeadphoneProduct powerBeats4];
      goto LABEL_27;
    case 0xCuLL:
      v5 = +[SFHeadphoneProduct powerBeatsPro];
      goto LABEL_27;
    case 0xDuLL:
      v5 = +[SFHeadphoneProduct b507];
      goto LABEL_27;
    case 0xEuLL:
      v5 = +[SFHeadphoneProduct b688];
      goto LABEL_27;
    case 0xFuLL:
      v5 = +[SFHeadphoneProduct b494];
      goto LABEL_27;
    case 0x10uLL:
      v5 = +[SFHeadphoneProduct b607];
      goto LABEL_27;
    case 0x11uLL:
      v5 = +[SFHeadphoneProduct b453];
      goto LABEL_27;
    case 0x12uLL:
      v5 = +[SFHeadphoneProduct b465];
      goto LABEL_27;
    case 0x13uLL:
      v5 = +[SFHeadphoneProduct b768e];
      goto LABEL_27;
    case 0x14uLL:
      v5 = +[SFHeadphoneProduct b768m];
      goto LABEL_27;
    case 0x15uLL:
      v5 = +[SFHeadphoneProduct b487];
      goto LABEL_27;
    case 0x16uLL:
      v5 = +[SFHeadphoneProduct b498];
      goto LABEL_27;
    case 0x17uLL:
      v5 = +[SFHeadphoneProduct b463];
      goto LABEL_27;
    case 0x19uLL:
      v5 = +[SFHeadphoneProduct b788];
      goto LABEL_27;
    case 0x1AuLL:
      v5 = +[SFHeadphoneProduct b494b];
LABEL_27:
      v4 = v5;
      break;
    default:
      break;
  }

  return v4;
}

- (SFHeadphoneProduct)initWithBluetoothModel:(id)a3
{
  v4 = a3;
  v5 = +[SFHeadphoneProduct b507];
  v6 = [v5 bluetoothModel];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = +[SFHeadphoneProduct b507];
  }

  else
  {
    v9 = +[SFHeadphoneProduct b688];
    v10 = [v9 bluetoothModel];
    v11 = [v4 isEqualToString:v10];

    if (v11)
    {
      v8 = +[SFHeadphoneProduct b688];
    }

    else
    {
      v12 = +[SFHeadphoneProduct b494];
      v13 = [v12 bluetoothModel];
      v14 = [v4 isEqualToString:v13];

      if (v14)
      {
        v8 = +[SFHeadphoneProduct b494];
      }

      else
      {
        v15 = +[SFHeadphoneProduct b698];
        v16 = [v15 bluetoothModel];
        v17 = [v4 isEqualToString:v16];

        if (v17)
        {
          v8 = +[SFHeadphoneProduct b698];
        }

        else
        {
          v18 = +[SFHeadphoneProduct b607];
          v19 = [v18 bluetoothModel];
          v20 = [v4 isEqualToString:v19];

          if (v20)
          {
            v8 = +[SFHeadphoneProduct b607];
          }

          else
          {
            v21 = +[SFHeadphoneProduct b453];
            v22 = [v21 bluetoothModel];
            v23 = [v4 isEqualToString:v22];

            if (v23)
            {
              v8 = +[SFHeadphoneProduct b453];
            }

            else
            {
              v24 = +[SFHeadphoneProduct b465];
              v25 = [v24 bluetoothModel];
              v26 = [v4 isEqualToString:v25];

              if (v26)
              {
                v8 = +[SFHeadphoneProduct b465];
              }

              else
              {
                v27 = +[SFHeadphoneProduct b768e];
                v28 = [v27 bluetoothModel];
                v29 = [v4 isEqualToString:v28];

                if (v29)
                {
                  v8 = +[SFHeadphoneProduct b768e];
                }

                else
                {
                  v30 = +[SFHeadphoneProduct b768m];
                  v31 = [v30 bluetoothModel];
                  v32 = [v4 isEqualToString:v31];

                  if (v32)
                  {
                    v8 = +[SFHeadphoneProduct b768m];
                  }

                  else
                  {
                    v33 = +[SFHeadphoneProduct b487];
                    v34 = [v33 bluetoothModel];
                    v35 = [v4 isEqualToString:v34];

                    if (v35)
                    {
                      v8 = +[SFHeadphoneProduct b487];
                    }

                    else
                    {
                      v36 = +[SFHeadphoneProduct b498];
                      v37 = [v36 bluetoothModel];
                      v38 = [v4 isEqualToString:v37];

                      if (v38)
                      {
                        v8 = +[SFHeadphoneProduct b498];
                      }

                      else
                      {
                        v39 = +[SFHeadphoneProduct b463];
                        v40 = [v39 bluetoothModel];
                        v41 = [v4 isEqualToString:v40];

                        if (v41)
                        {
                          v8 = +[SFHeadphoneProduct b463];
                        }

                        else
                        {
                          v42 = +[SFHeadphoneProduct b788];
                          v43 = [v42 bluetoothModel];
                          v44 = [v4 isEqualToString:v43];

                          if (v44)
                          {
                            v8 = +[SFHeadphoneProduct b788];
                          }

                          else
                          {
                            v45 = +[SFHeadphoneProduct b494b];
                            v46 = [v45 bluetoothModel];
                            v47 = [v4 isEqualToString:v46];

                            if (!v47)
                            {
                              v48 = 0;
                              goto LABEL_30;
                            }

                            v8 = +[SFHeadphoneProduct b494b];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v48 = v8;
LABEL_30:

  return v48;
}

- (SFHeadphoneProduct)initWithProductID:(unsigned int)a3
{
  v5 = +[SFHeadphoneProduct b507];
  v6 = [v5 productID];

  if (v6 == a3)
  {
    v7 = +[SFHeadphoneProduct b507];
  }

  else
  {
    v8 = +[SFHeadphoneProduct b607];
    v9 = [v8 productID];

    if (v9 == a3)
    {
      v7 = +[SFHeadphoneProduct b607];
    }

    else
    {
      v10 = +[SFHeadphoneProduct b688];
      v11 = [v10 productID];

      if (v11 == a3)
      {
        v7 = +[SFHeadphoneProduct b688];
      }

      else
      {
        v12 = +[SFHeadphoneProduct b494];
        v13 = [v12 productID];

        if (v13 == a3)
        {
          v7 = +[SFHeadphoneProduct b494];
        }

        else
        {
          v16 = +[SFHeadphoneProduct b698];
          v17 = [v16 productID];

          v18 = +[SFHeadphoneProduct b698];
          v14 = v18;
          if (v17 == a3)
          {
            goto LABEL_10;
          }

          v19 = [(SFHeadphoneProduct *)v18 altProductID];

          if (v19 == a3)
          {
            v7 = +[SFHeadphoneProduct b698];
          }

          else
          {
            v20 = +[SFHeadphoneProduct b768e];
            v21 = [v20 productID];

            v22 = +[SFHeadphoneProduct b768e];
            v14 = v22;
            if (v21 == a3)
            {
              goto LABEL_10;
            }

            v23 = [(SFHeadphoneProduct *)v22 altProductID];

            if (v23 == a3)
            {
              v7 = +[SFHeadphoneProduct b768e];
            }

            else
            {
              v24 = +[SFHeadphoneProduct b768m];
              v25 = [v24 productID];

              v26 = +[SFHeadphoneProduct b768m];
              v14 = v26;
              if (v25 == a3)
              {
                goto LABEL_10;
              }

              v27 = [(SFHeadphoneProduct *)v26 altProductID];

              if (v27 == a3)
              {
                v7 = +[SFHeadphoneProduct b768m];
              }

              else
              {
                v28 = +[SFHeadphoneProduct airPodsPro];
                v29 = [v28 productID];

                if (v29 == a3)
                {
                  v7 = +[SFHeadphoneProduct airPodsPro];
                }

                else
                {
                  v30 = +[SFHeadphoneProduct b788];
                  v31 = [v30 productID];

                  v32 = +[SFHeadphoneProduct b788];
                  v14 = v32;
                  if (v31 == a3)
                  {
                    goto LABEL_10;
                  }

                  v33 = [(SFHeadphoneProduct *)v32 altProductID];

                  if (v33 == a3)
                  {
                    v7 = +[SFHeadphoneProduct b788];
                  }

                  else
                  {
                    v34 = +[SFHeadphoneProduct airPodsMax];
                    v35 = [v34 altProductID];

                    v36 = +[SFHeadphoneProduct airPodsMax];
                    v14 = v36;
                    if (v35 == a3)
                    {
                      goto LABEL_10;
                    }

                    v37 = [(SFHeadphoneProduct *)v36 productID];

                    if (v37 == a3)
                    {
                      v7 = +[SFHeadphoneProduct airPodsMax];
                    }

                    else
                    {
                      v38 = +[SFHeadphoneProduct powerBeatsPro];
                      v39 = [v38 productID];

                      if (v39 == a3)
                      {
                        v7 = +[SFHeadphoneProduct powerBeatsPro];
                      }

                      else
                      {
                        v40 = +[SFHeadphoneProduct b453];
                        v41 = [v40 productID];

                        if (v41 == a3)
                        {
                          v7 = +[SFHeadphoneProduct b453];
                        }

                        else
                        {
                          v42 = +[SFHeadphoneProduct b465];
                          v43 = [v42 productID];

                          if (v43 == a3)
                          {
                            v7 = +[SFHeadphoneProduct b465];
                          }

                          else
                          {
                            v44 = +[SFHeadphoneProduct b487];
                            v45 = [v44 productID];

                            if (v45 == a3)
                            {
                              v7 = +[SFHeadphoneProduct b487];
                            }

                            else
                            {
                              v46 = +[SFHeadphoneProduct b498];
                              v47 = [v46 productID];

                              if (v47 == a3)
                              {
                                v7 = +[SFHeadphoneProduct b498];
                              }

                              else
                              {
                                v48 = +[SFHeadphoneProduct b463];
                                v49 = [v48 productID];

                                if (v49 == a3)
                                {
                                  v7 = +[SFHeadphoneProduct b463];
                                }

                                else
                                {
                                  v50 = +[SFHeadphoneProduct b494b];
                                  v51 = [v50 productID];

                                  if (v51 != a3)
                                  {
                                    v14 = 0;
                                    goto LABEL_10;
                                  }

                                  v7 = +[SFHeadphoneProduct b494b];
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = v7;
LABEL_10:

  return v14;
}

+ (SFHeadphoneProduct)airPods
{
  if (airPods_onceToken != -1)
  {
    +[SFHeadphoneProduct airPods];
  }

  v3 = airPods_airPods;

  return v3;
}

uint64_t __29__SFHeadphoneProduct_airPods__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8194 supportsMobileAsset:1];
  v1 = airPods_airPods;
  airPods_airPods = v0;

  [airPods_airPods setBluetoothModel:{@"AirPods1, 1"}];
  [airPods_airPods setModel:1];
  [airPods_airPods setSupportsSiri:1];
  [airPods_airPods setSupportsRepair:1];
  [airPods_airPods setSupportsSpatialAudio:1];
  [airPods_airPods setSupportsCounterfeitDetection:1];
  [airPods_airPods setShowsStatus:1];
  [airPods_airPods setHasAddressInAdvertisement:1];
  [airPods_airPods setHasSplitBattery:1];
  [airPods_airPods setHasW1Chip:1];
  [airPods_airPods setHasLid:1];
  [airPods_airPods setButtonLocation:1];
  v2 = airPods_airPods;

  return [v2 setIsAirPods:1];
}

+ (SFHeadphoneProduct)airPodsSecondGeneration
{
  if (airPodsSecondGeneration_onceToken != -1)
  {
    +[SFHeadphoneProduct airPodsSecondGeneration];
  }

  v3 = airPodsSecondGeneration_airPods;

  return v3;
}

uint64_t __45__SFHeadphoneProduct_airPodsSecondGeneration__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8207 supportsMobileAsset:1];
  v1 = airPodsSecondGeneration_airPods;
  airPodsSecondGeneration_airPods = v0;

  [airPodsSecondGeneration_airPods setBluetoothModel:{@"AirPods1, 3"}];
  [airPodsSecondGeneration_airPods setModel:2];
  [airPodsSecondGeneration_airPods setSupportsSiri:1];
  [airPodsSecondGeneration_airPods setSupportsRepair:1];
  [airPodsSecondGeneration_airPods setSupportsSpatialAudio:1];
  [airPodsSecondGeneration_airPods setSupportsCounterfeitDetection:1];
  [airPodsSecondGeneration_airPods setShowsStatus:1];
  [airPodsSecondGeneration_airPods setHasAddressInAdvertisement:1];
  [airPodsSecondGeneration_airPods setHasSplitBattery:1];
  [airPodsSecondGeneration_airPods setHasLid:1];
  [airPodsSecondGeneration_airPods setButtonLocation:1];
  v2 = airPodsSecondGeneration_airPods;

  return [v2 setIsAirPods:1];
}

uint64_t __26__SFHeadphoneProduct_b688__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8211 supportsMobileAsset:1];
  v1 = b688_b688;
  b688_b688 = v0;

  [b688_b688 setBluetoothModel:{@"Device1, 8211"}];
  [b688_b688 setModel:14];
  [b688_b688 setSupportsSiri:1];
  [b688_b688 setSupportsRepair:1];
  [b688_b688 setSupportsSpatialAudio:1];
  [b688_b688 setSupportsOptimizedBatteryCharging:1];
  [b688_b688 setSupportsFindMyNetwork:1];
  [b688_b688 setSupportsCounterfeitDetection:1];
  [b688_b688 setSupportsMuteCallProx:1];
  [b688_b688 setShowsStatus:1];
  [b688_b688 setHasAddressInAdvertisement:1];
  [b688_b688 setHasSplitBattery:1];
  [b688_b688 setHasLid:1];
  [b688_b688 setButtonLocation:1];
  v2 = b688_b688;

  return [v2 setIsAirPods:1];
}

uint64_t __27__SFHeadphoneProduct_b768e__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8217 supportsMobileAsset:1];
  v1 = b768e_b768e;
  b768e_b768e = v0;

  [b768e_b768e setAltProductID:8222];
  [b768e_b768e setBluetoothModel:{@"Device1, 8217"}];
  [b768e_b768e setModel:19];
  [b768e_b768e setSupportsSiri:1];
  [b768e_b768e setSupportsRepair:1];
  [b768e_b768e setSupportsSpatialAudio:1];
  [b768e_b768e setSupportsOptimizedBatteryCharging:1];
  [b768e_b768e setSupportsFindMyNetwork:1];
  [b768e_b768e setSupportsCounterfeitDetection:1];
  [b768e_b768e setSupportsDigitalEngraving:1];
  [b768e_b768e setIgnoresBatteryStatusIfCounterfeit:1];
  [b768e_b768e setShowsStatus:1];
  [b768e_b768e setHasAddressInAdvertisement:1];
  [b768e_b768e setHasSplitBattery:1];
  [b768e_b768e setHasLid:1];
  [b768e_b768e setButtonLocation:1];
  v2 = b768e_b768e;

  return [v2 setIsAirPods:1];
}

uint64_t __27__SFHeadphoneProduct_b768m__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8219 supportsMobileAsset:1];
  v1 = b768m_b768m;
  b768m_b768m = v0;

  [b768m_b768m setAltProductID:8224];
  [b768m_b768m setBluetoothModel:{@"Device1, 8219"}];
  [b768m_b768m setModel:20];
  [b768m_b768m setSupportsSiri:1];
  [b768m_b768m setSupportsRepair:1];
  [b768m_b768m setSupportsSpatialAudio:1];
  [b768m_b768m setSupportsOptimizedBatteryCharging:1];
  [b768m_b768m setSupportsFindMyNetwork:1];
  [b768m_b768m setSupportsCounterfeitDetection:1];
  [b768m_b768m setSupportsDigitalEngraving:1];
  [b768m_b768m setIgnoresBatteryStatusIfCounterfeit:1];
  [b768m_b768m setSupportsAdaptiveControlsProx:1];
  [b768m_b768m setShowsStatus:1];
  [b768m_b768m setHasAddressInAdvertisement:1];
  [b768m_b768m setHasSplitBattery:1];
  [b768m_b768m setHasLid:1];
  [b768m_b768m setHasCaseBT:1];
  [b768m_b768m setButtonLocation:1];
  v2 = b768m_b768m;

  return [v2 setIsAirPods:1];
}

uint64_t __32__SFHeadphoneProduct_airPodsPro__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8206 supportsMobileAsset:1];
  v1 = airPodsPro_airPodsPro;
  airPodsPro_airPodsPro = v0;

  [airPodsPro_airPodsPro setBluetoothModel:{@"AirPodsPro1, 1"}];
  [airPodsPro_airPodsPro setModel:3];
  [airPodsPro_airPodsPro setSupportsSiri:1];
  [airPodsPro_airPodsPro setSupportsRepair:1];
  [airPodsPro_airPodsPro setSupportsSpatialAudio:1];
  [airPodsPro_airPodsPro setSupportsOptimizedBatteryCharging:1];
  [airPodsPro_airPodsPro setSupportsFindMyNetwork:1];
  [airPodsPro_airPodsPro setSupportsCounterfeitDetection:1];
  [airPodsPro_airPodsPro setSupportsMuteCallProx:1];
  [airPodsPro_airPodsPro setShowsStatus:1];
  [airPodsPro_airPodsPro setHasAddressInAdvertisement:1];
  [airPodsPro_airPodsPro setHasSplitBattery:1];
  [airPodsPro_airPodsPro setHasLid:1];
  [airPodsPro_airPodsPro setButtonLocation:1];
  [airPodsPro_airPodsPro setIsAirPods:1];
  v2 = airPodsPro_airPodsPro;

  return [v2 setIsAirPodsPro:1];
}

uint64_t __26__SFHeadphoneProduct_b698__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8212 supportsMobileAsset:1];
  v1 = b698_airPodsPro;
  b698_airPodsPro = v0;

  [b698_airPodsPro setAltProductID:8228];
  [b698_airPodsPro setBluetoothModel:{@"Device1, 8212"}];
  [b698_airPodsPro setModel:24];
  [b698_airPodsPro setSupportsSiri:1];
  [b698_airPodsPro setSupportsRepair:1];
  [b698_airPodsPro setSupportsSpatialAudio:1];
  [b698_airPodsPro setSupportsOptimizedBatteryCharging:1];
  [b698_airPodsPro setSupportsFindMyNetwork:1];
  [b698_airPodsPro setSupportsCounterfeitDetection:1];
  [b698_airPodsPro setIgnoresBatteryStatusIfCounterfeit:1];
  [b698_airPodsPro setSupportsDigitalEngraving:1];
  [b698_airPodsPro setSupportsMuteCallProx:1];
  [b698_airPodsPro setSupportsAdaptiveControlsProx:1];
  [b698_airPodsPro setShowsStatus:1];
  [b698_airPodsPro setHasSplitBattery:1];
  [b698_airPodsPro setHasLid:1];
  [b698_airPodsPro setHasCaseBT:1];
  [b698_airPodsPro setButtonLocation:1];
  [b698_airPodsPro setIsAirPods:1];
  v2 = b698_airPodsPro;

  return [v2 setIsAirPodsPro:1];
}

uint64_t __26__SFHeadphoneProduct_b788__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8231 supportsMobileAsset:1];
  v1 = b788_airPodsPro;
  b788_airPodsPro = v0;

  [b788_airPodsPro setAltProductID:8232];
  [b788_airPodsPro setBluetoothModel:{@"Device1, 8231"}];
  [b788_airPodsPro setModel:25];
  [b788_airPodsPro setSupportsSiri:1];
  [b788_airPodsPro setSupportsRepair:1];
  [b788_airPodsPro setSupportsSpatialAudio:1];
  [b788_airPodsPro setSupportsOptimizedBatteryCharging:1];
  [b788_airPodsPro setSupportsFindMyNetwork:1];
  [b788_airPodsPro setSupportsCounterfeitDetection:1];
  [b788_airPodsPro setIgnoresBatteryStatusIfCounterfeit:1];
  [b788_airPodsPro setSupportsDigitalEngraving:1];
  [b788_airPodsPro setSupportsAdaptiveControlsProx:1];
  [b788_airPodsPro setShowsStatus:1];
  [b788_airPodsPro setHasSplitBattery:1];
  [b788_airPodsPro setHasLid:1];
  [b788_airPodsPro setHasCaseBT:1];
  [b788_airPodsPro setButtonLocation:1];
  [b788_airPodsPro setIsAirPods:1];
  v2 = b788_airPodsPro;

  return [v2 setIsAirPodsPro:1];
}

uint64_t __32__SFHeadphoneProduct_airPodsMax__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8202 supportsMobileAsset:1];
  v1 = airPodsMax_airPodsMax;
  airPodsMax_airPodsMax = v0;

  [airPodsMax_airPodsMax setAltProductID:8223];
  [airPodsMax_airPodsMax setBluetoothModel:{@"Device1, 8202"}];
  [airPodsMax_airPodsMax setModel:4];
  [airPodsMax_airPodsMax setSupportsSiri:1];
  [airPodsMax_airPodsMax setSupportsRepair:1];
  [airPodsMax_airPodsMax setSupportsSpatialAudio:1];
  [airPodsMax_airPodsMax setSupportsFindMyNetwork:1];
  [airPodsMax_airPodsMax setSupportsCounterfeitDetection:1];
  [airPodsMax_airPodsMax setSupportsMuteCallProx:1];
  [airPodsMax_airPodsMax setHasAddressInAdvertisement:1];
  [airPodsMax_airPodsMax setShowsStatus:1];
  v2 = airPodsMax_airPodsMax;

  return [v2 setButtonLocation:2];
}

+ (SFHeadphoneProduct)beatsSolo
{
  if (beatsSolo_onceToken != -1)
  {
    +[SFHeadphoneProduct beatsSolo];
  }

  v3 = beatsSolo_beatsSolo;

  return v3;
}

uint64_t __31__SFHeadphoneProduct_beatsSolo__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8198 supportsMobileAsset:1];
  v1 = beatsSolo_beatsSolo;
  beatsSolo_beatsSolo = v0;

  [beatsSolo_beatsSolo setBluetoothModel:{@"BeatsSolo3, 1"}];
  [beatsSolo_beatsSolo setModel:5];
  [beatsSolo_beatsSolo setSupportsSiri:1];
  [beatsSolo_beatsSolo setSupportsRepair:1];
  [beatsSolo_beatsSolo setHasAddressInAdvertisement:1];
  [beatsSolo_beatsSolo setHasW1Chip:1];
  v2 = beatsSolo_beatsSolo;

  return [v2 setButtonLocation:2];
}

+ (SFHeadphoneProduct)beatsSoloPro
{
  if (beatsSoloPro_onceToken != -1)
  {
    +[SFHeadphoneProduct beatsSoloPro];
  }

  v3 = beatsSoloPro_beatsSoloPro;

  return v3;
}

uint64_t __34__SFHeadphoneProduct_beatsSoloPro__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8204 supportsMobileAsset:1];
  v1 = beatsSoloPro_beatsSoloPro;
  beatsSoloPro_beatsSoloPro = v0;

  [beatsSoloPro_beatsSoloPro setBluetoothModel:{@"BeatsSoloPro1, 1"}];
  [beatsSoloPro_beatsSoloPro setModel:6];
  [beatsSoloPro_beatsSoloPro setSupportsSiri:1];
  [beatsSoloPro_beatsSoloPro setHasAddressInAdvertisement:1];
  [beatsSoloPro_beatsSoloPro setShowsStatusOutOfCase:1];
  v2 = beatsSoloPro_beatsSoloPro;

  return [v2 setButtonLocation:2];
}

+ (SFHeadphoneProduct)beatsStudio
{
  if (beatsStudio_onceToken != -1)
  {
    +[SFHeadphoneProduct beatsStudio];
  }

  v3 = beatsStudio_beatsStudio;

  return v3;
}

uint64_t __33__SFHeadphoneProduct_beatsStudio__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8201 supportsMobileAsset:1];
  v1 = beatsStudio_beatsStudio;
  beatsStudio_beatsStudio = v0;

  [beatsStudio_beatsStudio setBluetoothModel:{@"BeatsStudio3, 2"}];
  [beatsStudio_beatsStudio setModel:7];
  [beatsStudio_beatsStudio setSupportsRepair:1];
  [beatsStudio_beatsStudio setHasAddressInAdvertisement:1];
  [beatsStudio_beatsStudio setHasW1Chip:1];
  v2 = beatsStudio_beatsStudio;

  return [v2 setButtonLocation:2];
}

uint64_t __26__SFHeadphoneProduct_b453__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8215 supportsMobileAsset:1];
  v1 = b453_b453;
  b453_b453 = v0;

  [b453_b453 setBluetoothModel:{@"Device1, 8215"}];
  [b453_b453 setModel:17];
  [b453_b453 setSupportsSiri:1];
  [b453_b453 setSupportsRepair:1];
  [b453_b453 setSupportsEndCallProx:1];
  [b453_b453 setHasAddressInAdvertisement:1];
  [b453_b453 setHasW1Chip:1];
  v2 = b453_b453;

  return [v2 setButtonLocation:2];
}

uint64_t __26__SFHeadphoneProduct_b465__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8229 supportsMobileAsset:1];
  v1 = b465_b465;
  b465_b465 = v0;

  [b465_b465 setBluetoothModel:{@"Device1, 8229"}];
  [b465_b465 setModel:18];
  [b465_b465 setSupportsSiri:1];
  [b465_b465 setSupportsRepair:1];
  [b465_b465 setSupportsEndCallProx:1];
  [b465_b465 setSupportsMuteCallProx:1];
  [b465_b465 setHasAddressInAdvertisement:1];
  [b465_b465 setHasW1Chip:1];
  v2 = b465_b465;

  return [v2 setButtonLocation:2];
}

uint64_t __26__SFHeadphoneProduct_b487__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8218 supportsMobileAsset:1];
  v1 = b487_b487;
  b487_b487 = v0;

  [b487_b487 setBluetoothModel:{@"Device1, 8218"}];
  [b487_b487 setModel:21];
  [b487_b487 setSupportsRepair:1];
  [b487_b487 setSupportsEndCallProx:0];
  [b487_b487 setSupportsMuteCallProx:1];
  [b487_b487 setHasAddressInAdvertisement:1];
  [b487_b487 setHasW1Chip:1];
  v2 = b487_b487;

  return [v2 setButtonLocation:2];
}

+ (SFHeadphoneProduct)beatsX
{
  if (beatsX_onceToken != -1)
  {
    +[SFHeadphoneProduct beatsX];
  }

  v3 = beatsX_beatsX;

  return v3;
}

uint64_t __28__SFHeadphoneProduct_beatsX__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8197 supportsMobileAsset:1];
  v1 = beatsX_beatsX;
  beatsX_beatsX = v0;

  [beatsX_beatsX setBluetoothModel:{@"BeatsX1, 1"}];
  [beatsX_beatsX setModel:8];
  [beatsX_beatsX setSupportsRepair:1];
  [beatsX_beatsX setHasAddressInAdvertisement:1];
  [beatsX_beatsX setHasW1Chip:1];
  v2 = beatsX_beatsX;

  return [v2 setButtonLocation:2];
}

+ (SFHeadphoneProduct)beatsFlex
{
  if (beatsFlex_onceToken != -1)
  {
    +[SFHeadphoneProduct beatsFlex];
  }

  v3 = beatsFlex_beatsFlex;

  return v3;
}

uint64_t __31__SFHeadphoneProduct_beatsFlex__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8208 supportsMobileAsset:1];
  v1 = beatsFlex_beatsFlex;
  beatsFlex_beatsFlex = v0;

  [beatsFlex_beatsFlex setBluetoothModel:{@"Device1, 8208"}];
  [beatsFlex_beatsFlex setModel:9];
  [beatsFlex_beatsFlex setSupportsRepair:1];
  [beatsFlex_beatsFlex setSupportsWirelessSplitterInEar:1];
  [beatsFlex_beatsFlex setHasAddressInAdvertisement:1];
  [beatsFlex_beatsFlex setHasW1Chip:1];
  v2 = beatsFlex_beatsFlex;

  return [v2 setButtonLocation:2];
}

+ (SFHeadphoneProduct)powerBeats3
{
  if (powerBeats3_onceToken != -1)
  {
    +[SFHeadphoneProduct powerBeats3];
  }

  v3 = powerBeats3_powerBeats3;

  return v3;
}

uint64_t __33__SFHeadphoneProduct_powerBeats3__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8195 supportsMobileAsset:1];
  v1 = powerBeats3_powerBeats3;
  powerBeats3_powerBeats3 = v0;

  [powerBeats3_powerBeats3 setBluetoothModel:{@"PowerBeats3, 1"}];
  [powerBeats3_powerBeats3 setModel:10];
  [powerBeats3_powerBeats3 setSupportsRepair:1];
  [powerBeats3_powerBeats3 setHasAddressInAdvertisement:1];
  [powerBeats3_powerBeats3 setHasW1Chip:1];
  v2 = powerBeats3_powerBeats3;

  return [v2 setButtonLocation:2];
}

+ (SFHeadphoneProduct)powerBeats4
{
  if (powerBeats4_onceToken != -1)
  {
    +[SFHeadphoneProduct powerBeats4];
  }

  v3 = powerBeats4_powerBeats4;

  return v3;
}

uint64_t __33__SFHeadphoneProduct_powerBeats4__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8205 supportsMobileAsset:1];
  v1 = powerBeats4_powerBeats4;
  powerBeats4_powerBeats4 = v0;

  [powerBeats4_powerBeats4 setBluetoothModel:{@"Powerbeats4, 1"}];
  [powerBeats4_powerBeats4 setModel:11];
  [powerBeats4_powerBeats4 setHasAddressInAdvertisement:1];
  [powerBeats4_powerBeats4 setSupportsRepair:1];
  [powerBeats4_powerBeats4 setShowsStatusOutOfCase:1];
  v2 = powerBeats4_powerBeats4;

  return [v2 setButtonLocation:2];
}

uint64_t __35__SFHeadphoneProduct_powerBeatsPro__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8203 supportsMobileAsset:1];
  v1 = powerBeatsPro_powerBeatsPro;
  powerBeatsPro_powerBeatsPro = v0;

  [powerBeatsPro_powerBeatsPro setBluetoothModel:{@"PowerbeatsPro1, 1"}];
  [powerBeatsPro_powerBeatsPro setModel:12];
  [powerBeatsPro_powerBeatsPro setSupportsSiri:1];
  [powerBeatsPro_powerBeatsPro setSupportsRepair:1];
  [powerBeatsPro_powerBeatsPro setSupportsEndCallProx:1];
  [powerBeatsPro_powerBeatsPro setSupportsMuteCallProx:1];
  [powerBeatsPro_powerBeatsPro setShowsStatus:1];
  [powerBeatsPro_powerBeatsPro setHasAddressInAdvertisement:1];
  [powerBeatsPro_powerBeatsPro setHasSplitBattery:1];
  [powerBeatsPro_powerBeatsPro setHasLid:1];
  [powerBeatsPro_powerBeatsPro setButtonLocation:0];
  [powerBeatsPro_powerBeatsPro setUsesProductCaseName:1];
  [powerBeatsPro_powerBeatsPro setHasSplitCaseColors:1];
  v2 = powerBeatsPro_powerBeatsPro;

  return [v2 setIsBeatsProductWithCase:1];
}

uint64_t __26__SFHeadphoneProduct_b507__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8209 supportsMobileAsset:1];
  v1 = b507_b507;
  b507_b507 = v0;

  [b507_b507 setBluetoothModel:{@"Device1, 8209"}];
  [b507_b507 setModel:13];
  [b507_b507 setSupportsSiri:0];
  [b507_b507 setSupportsRepair:1];
  [b507_b507 setSupportsEndCallProx:1];
  [b507_b507 setShowsStatus:1];
  [b507_b507 setHasAddressInAdvertisement:1];
  [b507_b507 setHasSplitBattery:1];
  [b507_b507 setHasLid:1];
  [b507_b507 setButtonLocation:0];
  [b507_b507 setUsesProductCaseName:1];
  [b507_b507 setHasSplitCaseColors:1];
  v2 = b507_b507;

  return [v2 setIsBeatsProductWithCase:1];
}

uint64_t __26__SFHeadphoneProduct_b607__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8214 supportsMobileAsset:1];
  v1 = b607_b607;
  b607_b607 = v0;

  [b607_b607 setBluetoothModel:{@"Device1, 8214"}];
  [b607_b607 setModel:16];
  [b607_b607 setSupportsSiri:1];
  [b607_b607 setSupportsRepair:1];
  [b607_b607 setSupportsEndCallProx:1];
  [b607_b607 setShowsStatus:1];
  [b607_b607 setHasAddressInAdvertisement:1];
  [b607_b607 setHasSplitBattery:1];
  [b607_b607 setHasLid:1];
  [b607_b607 setButtonLocation:0];
  [b607_b607 setUsesProductCaseName:1];
  [b607_b607 setHasSplitCaseColors:0];
  v2 = b607_b607;

  return [v2 setIsBeatsProductWithCase:1];
}

uint64_t __26__SFHeadphoneProduct_b463__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8230 supportsMobileAsset:1];
  v1 = b463_b463;
  b463_b463 = v0;

  [b463_b463 setBluetoothModel:{@"Device1, 8230"}];
  [b463_b463 setModel:23];
  [b463_b463 setSupportsRepair:1];
  [b463_b463 setSupportsMuteCallProx:1];
  [b463_b463 setShowsStatus:1];
  [b463_b463 setHasAddressInAdvertisement:1];
  [b463_b463 setHasSplitBattery:1];
  [b463_b463 setHasCaseWithoutBattery:1];
  [b463_b463 setHasLid:1];
  [b463_b463 setButtonLocation:2];
  [b463_b463 setUsesProductCaseName:1];
  [b463_b463 setHasSplitCaseColors:0];
  v2 = b463_b463;

  return [v2 setIsBeatsProductWithCase:1];
}

uint64_t __26__SFHeadphoneProduct_b494__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8210 supportsMobileAsset:1];
  v1 = b494_b494;
  b494_b494 = v0;

  [b494_b494 setBluetoothModel:{@"Device1, 8210"}];
  [b494_b494 setModel:15];
  [b494_b494 setSupportsSiri:1];
  [b494_b494 setSupportsRepair:1];
  [b494_b494 setSupportsEndCallProx:1];
  [b494_b494 setSupportsMuteCallProx:1];
  [b494_b494 setShowsStatus:1];
  [b494_b494 setHasAddressInAdvertisement:1];
  [b494_b494 setHasSplitBattery:1];
  [b494_b494 setHasLid:1];
  [b494_b494 setButtonLocation:0];
  [b494_b494 setUsesProductCaseName:1];
  [b494_b494 setHasSplitCaseColors:1];
  v2 = b494_b494;

  return [v2 setIsBeatsProductWithCase:1];
}

+ (SFHeadphoneProduct)b494b
{
  if (b494b_onceToken != -1)
  {
    +[SFHeadphoneProduct b494b];
  }

  v3 = b494b_b494b;

  return v3;
}

uint64_t __27__SFHeadphoneProduct_b494b__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8239 supportsMobileAsset:1];
  v1 = b494b_b494b;
  b494b_b494b = v0;

  [b494b_b494b setBluetoothModel:{@"Device1, 8239"}];
  [b494b_b494b setModel:26];
  [b494b_b494b setSupportsSiri:1];
  [b494b_b494b setSupportsRepair:1];
  [b494b_b494b setSupportsEndCallProx:1];
  [b494b_b494b setSupportsMuteCallProx:1];
  [b494b_b494b setShowsStatus:1];
  [b494b_b494b setHasAddressInAdvertisement:1];
  [b494b_b494b setHasSplitBattery:1];
  [b494b_b494b setHasLid:1];
  [b494b_b494b setButtonLocation:2];
  [b494b_b494b setUsesProductCaseName:1];
  [b494b_b494b setHasSplitCaseColors:1];
  v2 = b494b_b494b;

  return [v2 setIsBeatsProductWithCase:1];
}

uint64_t __26__SFHeadphoneProduct_b498__block_invoke()
{
  v0 = [[SFHeadphoneProduct alloc] initWithProductID:8221 supportsMobileAsset:1];
  v1 = b498_b498;
  b498_b498 = v0;

  [b498_b498 setBluetoothModel:{@"Device1, 8221"}];
  [b498_b498 setModel:22];
  [b498_b498 setSupportsSiri:1];
  [b498_b498 setSupportsRepair:1];
  [b498_b498 setSupportsMuteCallProx:1];
  [b498_b498 setSupportsCounterfeitDetection:1];
  [b498_b498 setIgnoresBatteryStatusIfCounterfeit:1];
  [b498_b498 setShowsStatus:1];
  [b498_b498 setHasAddressInAdvertisement:1];
  [b498_b498 setHasSplitBattery:1];
  [b498_b498 setHasLid:1];
  [b498_b498 setButtonLocation:0];
  [b498_b498 setUsesProductCaseName:1];
  [b498_b498 setHasSplitCaseColors:0];
  v2 = b498_b498;

  return [v2 setIsBeatsProductWithCase:1];
}

@end