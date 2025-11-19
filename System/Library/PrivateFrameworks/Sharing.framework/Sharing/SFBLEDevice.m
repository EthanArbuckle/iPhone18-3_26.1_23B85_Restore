@interface SFBLEDevice
+ (void)setRSSIEstimatorInfo:(id)a3;
- (BOOL)updateRSSI:(int64_t)a3;
- (SFBLEDevice)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFBLEDevice

- (id)description
{
  v133 = *MEMORY[0x1E69E9840];
  SFShouldLogSensitiveDescriptions();
  v131 = 0;
  v130 = 0;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_identifier)
  {
    v129 = v3;
    NSAppendPrintF();
    v5 = v129;

    v4 = v5;
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v128 = v4;
    [(NSData *)bluetoothAddress bytes];
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  advertisementFields = self->_advertisementFields;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v127 = v4;
  rssi_low = LODWORD(self->_rssi);
  if (self->_triggered)
  {
    v11 = 84;
  }

  else
  {
    v11 = 116;
  }

  if (self->_insideBubble)
  {
    v12 = 42;
  }

  else
  {
    v12 = 126;
  }

  distance = self->_distance;
  if (distance <= 29)
  {
    if (!distance)
    {
      v14 = "U";
      goto LABEL_28;
    }

    if (distance != 10)
    {
      if (distance == 20)
      {
        v14 = "N";
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    v14 = "I";
  }

  else if (distance > 49)
  {
    if (distance != 50)
    {
      if (distance == 60)
      {
        v14 = "F";
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    v14 = "H";
  }

  else
  {
    if (distance != 30)
    {
      if (distance == 40)
      {
        v14 = "R";
        goto LABEL_28;
      }

LABEL_24:
      v14 = "?";
      goto LABEL_28;
    }

    v14 = "P";
  }

LABEL_28:
  v101 = v11;
  v103 = v12;
  rssiEstimate = self->_rssiEstimate;
  v105 = v14;
  v106 = Int64Ranged;
  NSAppendPrintF();
  v15 = v127;

  if (self->_insideSmallBubble)
  {
    v126 = v15;
    NSAppendPrintF();
    v16 = v15;

    v15 = v16;
  }

  if (self->_insideMediumBubble)
  {
    v125 = v15;
    NSAppendPrintF();
    v17 = v15;

    v15 = v17;
  }

  if (self->_advertisementData)
  {
    v124 = v15;
    NSAppendPrintF();
    v18 = v15;

    v15 = v18;
  }

  v19 = self->_advertisementFields;
  v20 = CFDictionaryGetInt64Ranged();
  v123 = v15;
  if (v20 <= 9u)
  {
    v21 = off_1E788DD70[v20 & 0xF];
  }

  NSAppendPrintF();
  v22 = v123;

  v122 = v22;
  name = self->_name;
  if (!name)
  {
    name = @"?";
  }

  v95 = name;
  NSAppendPrintF();
  v24 = v122;

  v25 = self->_advertisementFields;
  v26 = CFDictionaryGetInt64Ranged();
  v27 = v26;
  if (v26)
  {
    v121 = v24;
    if (v26 > 0x66u)
    {
      v28 = "?";
    }

    else
    {
      v28 = *(off_1E788DDC0 + (((v26 << 56) - 0x100000000000000) >> 53));
    }

    v95 = v28;
    NSAppendPrintF();
    v29 = v121;

    v24 = v29;
  }

  v30 = [(NSDictionary *)self->_advertisementFields objectForKeyedSubscript:@"model", v95, rssiEstimate, v101, v103, v105, v106];
  if (v30)
  {
    v120[10] = v24;
    NSAppendPrintF();
    v31 = v24;

    v24 = v31;
  }

  v32 = self->_advertisementFields;
  v120[9] = v24;
  CFDictionaryGetInt64();
  NSAppendPrintF();
  v33 = v24;

  v34 = self->_advertisementFields;
  v120[8] = v33;
  CFDictionaryGetInt64();
  NSAppendPrintF();
  v35 = v33;

  v36 = self->_advertisementFields;
  if (CFDictionaryGetInt64())
  {
    v120[7] = v35;
    NSAppendPrintF();
    v37 = v35;

    v35 = v37;
  }

  v38 = self->_advertisementFields;
  v39 = CFDictionaryGetInt64Ranged();
  v40 = v39;
  if (v39)
  {
    v41 = 85;
  }

  else
  {
    v41 = 117;
  }

  v132[133] = v41;
  if ((v39 & 8) != 0)
  {
    v42 = 65;
  }

  else if ((v39 & 2) != 0)
  {
    v42 = 67;
  }

  else if ((v39 & 0x800) != 0)
  {
    v42 = 84;
  }

  else if ((v39 & 4) != 0)
  {
    v42 = 69;
  }

  else
  {
    v42 = 63;
  }

  v132[134] = v42;
  if ((v39 & 0x40) != 0)
  {
    v43 = 65;
  }

  else if ((v39 & 0x10) != 0)
  {
    v43 = 67;
  }

  else if ((v39 & 0x20) != 0)
  {
    v43 = 69;
  }

  else
  {
    v43 = 63;
  }

  v132[135] = v43;
  if ((v39 & 0x80) != 0)
  {
    v44 = 76;
  }

  else
  {
    v44 = 114;
  }

  v132[136] = v44;
  if ((v39 & 0x100) != 0)
  {
    v45 = 80;
  }

  else
  {
    v45 = 115;
  }

  v132[137] = v45;
  if ((v39 & 0x200) != 0)
  {
    v46 = 66;
  }

  else
  {
    v46 = 98;
  }

  v132[138] = v46;
  v47 = self->_advertisementFields;
  if (CFDictionaryGetInt64Ranged())
  {
    v48 = 67;
  }

  else
  {
    v48 = 111;
  }

  v132[139] = v48;
  v49 = self->_advertisementFields;
  v132[140] = CFDictionaryGetInt64Ranged() + 48;
  v50 = self->_advertisementFields;
  v132[141] = CFDictionaryGetInt64Ranged() + 48;
  if ((v40 & 0x400) != 0)
  {
    v51 = 83;
  }

  else
  {
    v51 = 115;
  }

  v132[142] = v51;
  v132[143] = 0;
  v120[6] = v35;
  NSAppendPrintF();
  v52 = v35;

  v53 = self->_advertisementFields;
  v120[5] = v52;
  Int64 = CFDictionaryGetInt64Ranged();
  NSAppendPrintF();
  v54 = v52;

  v55 = self->_advertisementFields;
  v56 = CFDictionaryGetInt64Ranged();
  if (!v131)
  {
    v120[3] = v54;
    Int64 = v56;
    NSAppendPrintF();
    v57 = v54;

    v54 = v57;
  }

  v58 = self->_advertisementFields;
  v59 = CFDictionaryGetInt64Ranged();
  if (!v131)
  {
    v120[2] = v54;
    Int64 = v59;
    NSAppendPrintF();
    v60 = v54;

    v54 = v60;
  }

  v61 = self->_advertisementFields;
  v62 = CFDictionaryGetInt64Ranged();
  if (v62)
  {
    v120[1] = v54;
    Int64 = v62;
    NSAppendPrintF();
    v63 = v54;

    v54 = v63;
  }

  v64 = self->_advertisementFields;
  v65 = CFDictionaryGetInt64Ranged();
  if (v131)
  {
    v119 = v54;
    v66 = &v119;
  }

  else
  {
    v120[0] = v54;
    if (v65 > 2u)
    {
      v67 = "?";
    }

    else
    {
      v67 = off_1E788E0F0[v65 & 3];
    }

    Int64 = v67;
    v66 = v120;
  }

  NSAppendPrintF();
  v68 = *v66;

  v69 = self->_advertisementFields;
  if (CFDictionaryGetInt64())
  {
    v118 = v68;
    NSAppendPrintF();
    v70 = v68;

    v68 = v70;
  }

  v71 = self->_advertisementFields;
  if (CFDictionaryGetInt64())
  {
    v117 = v68;
    NSAppendPrintF();
    v72 = v68;

    v68 = v72;
  }

  v73 = self->_advertisementFields;
  if (CFDictionaryGetInt64())
  {
    v116 = v68;
    NSAppendPrintF();
    v74 = v68;

    v68 = v74;
  }

  if (v27 == 10)
  {
    v75 = self->_advertisementFields;
    v115 = v68;
    Int64 = CFDictionaryGetInt64();
    v99 = &unk_1A998F0B8;
    NSAppendPrintF();
    v76 = v68;

    v68 = v76;
  }

  v77 = [(NSDictionary *)self->_advertisementFields objectForKeyedSubscript:@"batteryInfo", Int64, v99];
  if ([v77 count])
  {
    v108 = v30;
    v114 = v68;
    NSAppendPrintF();
    v78 = v68;

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v107 = v77;
    obj = v77;
    v79 = [obj countByEnumeratingWithState:&v110 objects:v132 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = 1;
      v82 = *v111;
      do
      {
        v83 = 0;
        v84 = v78;
        do
        {
          if (*v111 != v82)
          {
            objc_enumerationMutation(obj);
          }

          v85 = *(*(&v110 + 1) + 8 * v83);
          v86 = [v85 batteryType];
          if (v81 <= 1)
          {
            v87 = "";
          }

          else
          {
            v87 = "; ";
          }

          if ((v86 - 1) >= 3)
          {
            if (v86 == 4)
            {
              v88 = 77;
            }

            else
            {
              v88 = 63;
            }
          }

          else
          {
            v88 = dword_1A998F1D0[v86 - 1];
          }

          v89 = [v85 batteryState];
          [v85 batteryLevel];
          v104 = v90 * 100.0;
          v91 = 45;
          if (v89 == 2)
          {
            v91 = 43;
          }

          v100 = v88;
          v102 = v91;
          v97 = v87;
          NSAppendPrintF();
          v78 = v84;

          ++v81;
          ++v83;
          v84 = v78;
        }

        while (v80 != v83);
        v80 = [obj countByEnumeratingWithState:&v110 objects:v132 count:{16, v87, v88, v102, *&v104}];
      }

      while (v80);
    }

    v68 = v78;
    v77 = v107;
    v30 = v108;
  }

  v92 = v68;

  v93 = *MEMORY[0x1E69E9840];

  return v92;
}

+ (void)setRSSIEstimatorInfo:(id)a3
{
  v9 = a3;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v4 = CFDictionaryGetInt64Ranged();
  v5 = CFDictionaryGetInt64Ranged();
  v6 = CFDictionaryGetInt64Ranged();
  if ((Int64Ranged - 8) <= 0xFFFFFFFFFFFFFFF8)
  {
    +[SFBLEDevice setRSSIEstimatorInfo:];
    goto LABEL_19;
  }

  if (v5 > v4 || v5 + v4 >= v6)
  {
    +[SFBLEDevice setRSSIEstimatorInfo:];
    goto LABEL_19;
  }

  if (v6 >= 9uLL)
  {
    +[SFBLEDevice setRSSIEstimatorInfo:];
    goto LABEL_19;
  }

  v7 = Int64Ranged != gSFBLERSSIAlgorithm;
  if (Int64Ranged != gSFBLERSSIAlgorithm)
  {
    gSFBLERSSIAlgorithm = Int64Ranged;
  }

  if (v4 != gSFBLERSSIRemoveHigh)
  {
    gSFBLERSSIRemoveHigh = v4;
    v7 = 1;
  }

  if (v5 == gSFBLERSSIRemoveLow)
  {
    if (v6 == gSFBLERSSISampleCount)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  gSFBLERSSIRemoveLow = v5;
  if (v6 != gSFBLERSSISampleCount)
  {
LABEL_14:
    gSFBLERSSISampleCount = v6;
  }

LABEL_15:
  if (gLogCategory_SFBLERSSI <= 30 && (gLogCategory_SFBLERSSI != -1 || _LogCategory_Initialize()))
  {
    v8 = off_1E788DD38[Int64Ranged - 1];
    LogPrintF();
  }

LABEL_19:
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  advertisementData = self->_advertisementData;
  if (advertisementData)
  {
    [v20 encodeObject:advertisementData forKey:@"aData"];
  }

  advertisementFields = self->_advertisementFields;
  if (advertisementFields)
  {
    [v20 encodeObject:advertisementFields forKey:@"aFields"];
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    [v20 encodeObject:bluetoothAddress forKey:@"bdAddr"];
  }

  counterpartIdentifier = self->_counterpartIdentifier;
  if (counterpartIdentifier)
  {
    [v20 encodeObject:counterpartIdentifier forKey:@"cpid"];
  }

  if (self->_decryptedActivityLevel)
  {
    [v20 encodeInteger:? forKey:?];
  }

  distance = self->_distance;
  if (distance)
  {
    [v20 encodeInteger:distance forKey:@"dist"];
  }

  foundTicks = self->_foundTicks;
  if (foundTicks)
  {
    [v20 encodeInt64:foundTicks forKey:@"fticks"];
  }

  proxPairingTicks = self->_proxPairingTicks;
  if (proxPairingTicks)
  {
    [v20 encodeInt64:proxPairingTicks forKey:@"pticks"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v20 encodeObject:identifier forKey:@"ident"];
  }

  if (self->_useBTPipe)
  {
    [v20 encodeBool:1 forKey:@"btpipe"];
  }

  if (self->_insideBubble)
  {
    [v20 encodeBool:1 forKey:@"inBub"];
  }

  if (self->_insideSmallBubble)
  {
    [v20 encodeBool:1 forKey:@"inSBub"];
  }

  if (self->_insideMediumBubble)
  {
    [v20 encodeBool:1 forKey:@"inMBub"];
  }

  if (self->_lastSeen != 0.0)
  {
    [v20 encodeDouble:@"last" forKey:?];
  }

  name = self->_name;
  if (name)
  {
    [v20 encodeObject:name forKey:@"name"];
  }

  if (self->_paired)
  {
    [v20 encodeBool:1 forKey:@"paired"];
  }

  rssi = self->_rssi;
  if (rssi)
  {
    [v20 encodeInteger:rssi forKey:@"rssi"];
  }

  rssiCeiling = self->_rssiCeiling;
  if (rssiCeiling)
  {
    [v20 encodeInteger:rssiCeiling forKey:@"cRSSI"];
  }

  rssiEstimate = self->_rssiEstimate;
  if (rssiEstimate)
  {
    [v20 encodeInteger:rssiEstimate forKey:@"rssiE"];
  }

  rssiFloor = self->_rssiFloor;
  if (rssiFloor)
  {
    [v20 encodeInteger:rssiFloor forKey:@"fRSSI"];
  }

  if (self->_rssiHistory[0])
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_rssiHistory length:8];
    [v20 encodeObject:v17 forKey:@"hRSSI"];
  }

  smoothedRSSI = self->_smoothedRSSI;
  if (smoothedRSSI)
  {
    [v20 encodeInteger:smoothedRSSI forKey:@"sRSSI"];
  }

  v19 = v20;
  if (self->_triggered)
  {
    [v20 encodeBool:1 forKey:@"trig"];
    v19 = v20;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    advertisementData = self->_advertisementData;
    if (advertisementData)
    {
      objc_storeStrong((v4 + 40), advertisementData);
    }

    advertisementFields = self->_advertisementFields;
    if (advertisementFields)
    {
      objc_storeStrong((v5 + 48), advertisementFields);
    }

    bluetoothAddress = self->_bluetoothAddress;
    if (bluetoothAddress)
    {
      objc_storeStrong((v5 + 56), bluetoothAddress);
    }

    counterpartIdentifier = self->_counterpartIdentifier;
    if (counterpartIdentifier)
    {
      objc_storeStrong((v5 + 64), counterpartIdentifier);
    }

    distance = self->_distance;
    if (distance)
    {
      *(v5 + 72) = distance;
    }

    foundTicks = self->_foundTicks;
    if (foundTicks)
    {
      *(v5 + 80) = foundTicks;
    }

    proxPairingTicks = self->_proxPairingTicks;
    if (proxPairingTicks)
    {
      *(v5 + 152) = proxPairingTicks;
    }

    identifier = self->_identifier;
    if (identifier)
    {
      objc_storeStrong((v5 + 88), identifier);
    }

    *(v5 + 20) = self->_insideBubble;
    *(v5 + 21) = self->_insideSmallBubble;
    *(v5 + 22) = self->_insideMediumBubble;
    lastSeen = self->_lastSeen;
    if (lastSeen != 0.0)
    {
      *(v5 + 168) = lastSeen;
    }

    name = self->_name;
    if (name)
    {
      objc_storeStrong((v5 + 96), name);
    }

    if (self->_paired)
    {
      *(v5 + 23) = 1;
    }

    *(v5 + 104) = self->_rssi;
    *(v5 + 28) = self->_rssiEstimate;
    rssiCeiling = self->_rssiCeiling;
    if (rssiCeiling)
    {
      *(v5 + 112) = rssiCeiling;
    }

    rssiFloor = self->_rssiFloor;
    if (rssiFloor)
    {
      *(v5 + 120) = rssiFloor;
    }

    *(v5 + 8) = *self->_rssiHistory;
    smoothedRSSI = self->_smoothedRSSI;
    if (smoothedRSSI)
    {
      *(v5 + 128) = smoothedRSSI;
    }

    *(v5 + 25) = self->_triggered;
    v19 = v5;
  }

  return v5;
}

- (BOOL)updateRSSI:(int64_t)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    self->_rssi = a3;
    v4 = 127;
    if (a3 < 127)
    {
      v4 = a3;
    }

    if (v4 <= -128)
    {
      LOBYTE(v4) = 0x80;
    }

    rssiIndex = self->_rssiIndex;
    v6 = gSFBLERSSISampleCount;
    if (gSFBLERSSISampleCount <= rssiIndex)
    {
      LODWORD(rssiIndex) = 0;
    }

    rssiHistory = self->_rssiHistory;
    self->_rssiIndex = rssiIndex + 1;
    self->_rssiHistory[rssiIndex] = v4;
    rssiCount = self->_rssiCount;
    if (v6 > rssiCount)
    {
      LOBYTE(rssiCount) = rssiCount + 1;
      self->_rssiCount = rssiCount;
      rssiCount = rssiCount;
    }

    if (v6 <= rssiCount)
    {
      if (gSFBLERSSIAlgorithm <= 2)
      {
        if (gSFBLERSSIAlgorithm == 1)
        {
          if (v6)
          {
            LOBYTE(v4) = *rssiHistory;
            v25 = v6 - 1;
            if (v6 != 1)
            {
              v26 = &self->_rssiHistory[1];
              do
              {
                v28 = *v26++;
                v27 = v28;
                if (v28 < v4)
                {
                  LOBYTE(v4) = v27;
                }

                --v25;
              }

              while (v25);
            }

            goto LABEL_97;
          }
        }

        else
        {
          if (gSFBLERSSIAlgorithm != 2)
          {
            goto LABEL_97;
          }

          if (v6)
          {
            LOBYTE(v4) = *rssiHistory;
            v14 = v6 - 1;
            if (v6 != 1)
            {
              v15 = &self->_rssiHistory[1];
              do
              {
                v17 = *v15++;
                v16 = v17;
                if (v17 > v4)
                {
                  LOBYTE(v4) = v16;
                }

                --v14;
              }

              while (v14);
            }

            goto LABEL_97;
          }
        }
      }

      else
      {
        if (gSFBLERSSIAlgorithm != 3)
        {
          if (gSFBLERSSIAlgorithm == 4)
          {
            LODWORD(v4) = *rssiHistory;
            if (v6 < 2)
            {
              v22 = *rssiHistory;
            }

            else
            {
              v20 = v6 - 1;
              v21 = &self->_rssiHistory[1];
              LOBYTE(v22) = *rssiHistory;
              do
              {
                v24 = *v21++;
                v23 = v24;
                if (v24 >= v22)
                {
                  v22 = v22;
                }

                else
                {
                  v22 = v23;
                }

                if (v23 <= v4)
                {
                  LODWORD(v4) = v4;
                }

                else
                {
                  LODWORD(v4) = v23;
                }

                --v20;
              }

              while (v20);
            }

            v29 = (v6 + 1) >> 1;
            while (1)
            {
              v30 = (v4 + v22 + (((v4 + v22) & 0x8000u) >> 15)) >> 1;
              if (v6 < 1)
              {
                v33 = 0;
                v32 = 0;
                v31 = 0;
                v37 = v22;
                v36 = v4;
              }

              else
              {
                v31 = 0;
                v32 = 0;
                v33 = 0;
                v34 = rssiHistory;
                v35 = v6;
                v36 = v4;
                v37 = v22;
                do
                {
                  v39 = *v34++;
                  v38 = v39;
                  v40 = v36;
                  if (v39 < v36)
                  {
                    v40 = v38;
                  }

                  if (v30 >= v38)
                  {
                    v41 = v32;
                  }

                  else
                  {
                    v41 = v32 + 1;
                  }

                  if (v30 < v38)
                  {
                    v42 = v31;
                  }

                  else
                  {
                    v42 = v31 + 1;
                  }

                  if (v30 >= v38)
                  {
                    v40 = v36;
                  }

                  v43 = v37;
                  if (v38 > v37)
                  {
                    v43 = v38;
                  }

                  if (v30 <= v38)
                  {
                    v32 = v41;
                  }

                  else
                  {
                    ++v33;
                  }

                  if (v30 > v38)
                  {
                    v37 = v43;
                  }

                  else
                  {
                    v31 = v42;
                  }

                  if (v30 <= v38)
                  {
                    v36 = v40;
                  }

                  --v35;
                }

                while (v35);
              }

              if (v33 <= v29 && v32 <= v29)
              {
                break;
              }

              if (v33 > v32)
              {
                LODWORD(v4) = v37;
              }

              else
              {
                v22 = v36;
              }
            }

            if (v31 + v33 >= v29)
            {
              LOBYTE(v4) = (v4 + v22 + (((v4 + v22) & 0x8000u) >> 15)) >> 1;
            }

            else
            {
              LOBYTE(v4) = v36;
            }

            if (v33 >= v29)
            {
              LOBYTE(v4) = v37;
            }

            goto LABEL_97;
          }

          if (gSFBLERSSIAlgorithm == 5)
          {
            v49[0] = 0;
            v10 = gSFBLERSSIRemoveHigh;
            v11 = v6 - (gSFBLERSSIRemoveLow + gSFBLERSSIRemoveHigh);
            if (v6 > gSFBLERSSIRemoveLow + gSFBLERSSIRemoveHigh)
            {
              if (v11 > 1)
              {
                __memcpy_chk();
                qsort(v49, v6, 1uLL, _QSortCmpInt8);
                v13 = 0;
                v45 = v49 + v10;
                v46 = v11;
                do
                {
                  v47 = *v45++;
                  v13 += v47;
                  --v46;
                }

                while (v46);
                LODWORD(v6) = v11;
              }

              else
              {
                v12 = 0;
                v13 = 0;
                do
                {
                  v13 += rssiHistory[v12++];
                }

                while (v6 != v12);
              }

LABEL_96:
              LODWORD(v4) = v13 / v6;
              goto LABEL_97;
            }

            if (v6)
            {
              v44 = 0;
              v13 = 0;
              do
              {
                v13 += rssiHistory[v44++];
              }

              while (v6 != v44);
              goto LABEL_96;
            }

            goto LABEL_92;
          }

LABEL_97:
          result = self->_smoothedRSSI != v4;
          self->_rssiCeiling = v4;
          self->_rssiFloor = v4;
          self->_smoothedRSSI = v4;
          goto LABEL_98;
        }

        if (v6)
        {
          v13 = 0;
          v18 = v6;
          do
          {
            v19 = *rssiHistory++;
            v13 += v19;
            --v18;
          }

          while (v18);
          goto LABEL_96;
        }
      }

LABEL_92:
      LOBYTE(v4) = 0;
      goto LABEL_97;
    }
  }

  result = 0;
LABEL_98:
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

- (SFBLEDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = SFBLEDevice;
  v5 = [(SFBLEDevice *)&v48 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"aData"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"aData"];
      advertisementData = v5->_advertisementData;
      v5->_advertisementData = v6;
    }

    if ([v4 containsValueForKey:@"aFields"])
    {
      v8 = MEMORY[0x1E695DFD8];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
      v16 = [v4 decodeObjectOfClasses:v15 forKey:@"aFields"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = MEMORY[0x1E695DF30];
        v18 = *MEMORY[0x1E695D940];
        v19 = _NSMethodExceptionProem();
        [v17 raise:v18 format:{@"%@: bad type for key %@ : %@", v19, @"aFields", v16}];
      }

      advertisementFields = v5->_advertisementFields;
      v5->_advertisementFields = v16;
    }

    if ([v4 containsValueForKey:@"bdAddr"])
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bdAddr"];
      bluetoothAddress = v5->_bluetoothAddress;
      v5->_bluetoothAddress = v21;

      if ([(NSData *)v5->_bluetoothAddress length]!= 6)
      {
        v23 = MEMORY[0x1E695DF30];
        v24 = *MEMORY[0x1E695D940];
        v25 = _NSMethodExceptionProem();
        [v23 raise:v24 format:{@"%@: Bad BluetoothAddress length: %ld (not 6)", v25, -[NSData length](v5->_bluetoothAddress, "length")}];
      }
    }

    if ([v4 containsValueForKey:@"cpid"])
    {
      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cpid"];
      counterpartIdentifier = v5->_counterpartIdentifier;
      v5->_counterpartIdentifier = v26;
    }

    if ([v4 containsValueForKey:@"decAL"])
    {
      v5->_decryptedActivityLevel = [v4 decodeIntegerForKey:@"decAL"];
    }

    if ([v4 containsValueForKey:@"dist"])
    {
      v5->_distance = [v4 decodeIntegerForKey:@"dist"];
    }

    v28 = v4;
    if ([v28 containsValueForKey:@"fticks"])
    {
      v5->_foundTicks = [v28 decodeInt64ForKey:@"fticks"];
    }

    v29 = v28;
    if ([v29 containsValueForKey:@"pticks"])
    {
      v5->_proxPairingTicks = [v29 decodeInt64ForKey:@"pticks"];
    }

    if ([v29 containsValueForKey:@"ident"])
    {
      v30 = [v29 decodeObjectOfClass:objc_opt_class() forKey:@"ident"];
      identifier = v5->_identifier;
      v5->_identifier = v30;
    }

    v32 = v29;
    if ([v32 containsValueForKey:@"btpipe"])
    {
      v5->_useBTPipe = [v32 decodeBoolForKey:@"btpipe"];
    }

    v33 = v32;
    if ([v33 containsValueForKey:@"inBub"])
    {
      v5->_insideBubble = [v33 decodeBoolForKey:@"inBub"];
    }

    v34 = v33;
    if ([v34 containsValueForKey:@"inSBub"])
    {
      v5->_insideSmallBubble = [v34 decodeBoolForKey:@"inSBub"];
    }

    v35 = v34;
    if ([v35 containsValueForKey:@"inMBub"])
    {
      v5->_insideMediumBubble = [v35 decodeBoolForKey:@"inMBub"];
    }

    if ([v35 containsValueForKey:@"last"])
    {
      [v35 decodeDoubleForKey:@"last"];
      v5->_lastSeen = v36;
    }

    if ([v35 containsValueForKey:@"name"])
    {
      v37 = [v35 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
      name = v5->_name;
      v5->_name = v37;
    }

    if ([v35 containsValueForKey:@"rssi"])
    {
      v5->_rssi = [v35 decodeIntegerForKey:@"rssi"];
    }

    if ([v35 containsValueForKey:@"cRSSI"])
    {
      v5->_rssiCeiling = [v35 decodeIntegerForKey:@"cRSSI"];
    }

    v49 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rssiEstimate = v49;
    }

    if ([v35 containsValueForKey:@"fRSSI"])
    {
      v5->_rssiFloor = [v35 decodeIntegerForKey:@"fRSSI"];
    }

    if ([v35 containsValueForKey:@"hRSSI"])
    {
      v39 = [v35 decodeObjectOfClass:objc_opt_class() forKey:@"hRSSI"];
      v40 = [v39 bytes];
      v41 = [v39 length];
      v42 = 8;
      if (v41 < 8)
      {
        v42 = v41;
      }

      if (v41)
      {
        rssiHistory = v5->_rssiHistory;
        do
        {
          v44 = *v40++;
          *rssiHistory++ = v44;
          --v42;
        }

        while (v42);
      }
    }

    if ([v35 containsValueForKey:@"sRSSI"])
    {
      v5->_smoothedRSSI = [v35 decodeIntegerForKey:@"sRSSI"];
    }

    v45 = v35;
    if ([v45 containsValueForKey:@"trig"])
    {
      v5->_triggered = [v45 decodeBoolForKey:@"trig"];
    }

    v46 = v5;
  }

  return v5;
}

+ (uint64_t)setRSSIEstimatorInfo:.cold.1()
{
  if (gLogCategory_SFBLERSSI <= 90)
  {
    if (gLogCategory_SFBLERSSI != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

+ (uint64_t)setRSSIEstimatorInfo:.cold.2()
{
  if (gLogCategory_SFBLERSSI <= 90)
  {
    if (gLogCategory_SFBLERSSI != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

+ (uint64_t)setRSSIEstimatorInfo:.cold.3()
{
  if (gLogCategory_SFBLERSSI <= 90)
  {
    if (gLogCategory_SFBLERSSI != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

@end